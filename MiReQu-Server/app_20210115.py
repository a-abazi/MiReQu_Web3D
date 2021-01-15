# docs @ http://flask.pocoo.org/docs/1.0/quickstart/
from src.python.timeTaggerData import CoincidencesNoUI
from src.python.rotEncoderData import rotEncoderInterface
from src.python.ExportManager import ExportManager


from flask import Flask, jsonify, request, render_template
from flask_cors import CORS
import sys, os
import PySide2
import numpy as np
import time

# all required TimeTagger dependencies
from TimeTagger import Coincidences, Counter, Correlation, createTimeTagger, freeTimeTagger
from multiprocessing import Process, Value

" Start Server from Terminal with >>> flask run --host=192.168.2.100"

"""
Here is an Example for the structure of the JsonFiles for the export:
tstJsonExport = '{"Exercise":"Hauptversuch", "Subexercise":"Aufgabe1"' \
                ',"FileName": "TstName"' \
                ',"xAxis": [0,1,2,3,4]' \
                ',"yAxis1": [0.0,10.0,20.0,30.0,40.0]' \
                ',"yAxis2": [0.0,12.0,22.0,32.0,42.0]' \
                ',"yAxis3": [0.0,13.0,23.0,33.0,43.0]' \
                ' }'
"""


app = Flask(__name__)
CORS(app)

c1 ,c2, cc12 = [],[],[]
p00,p01,p02 = 0,0,0
s01,s02 = 0,0


@app.route('/datagettimetagger', methods=['GET', 'POST'])
def dataGetTimetagger():
    # POST request
    if request.method == 'POST':
        return 'OK', 200
        print('Incoming..')
        print(request.get_json())  # parse as JSON

    # GET request
    else:
        message = {
            'C1': c1,#np.flip(ccStream.counter.getData()[0]* ccStream.getCouterNormalizationFactor()).tolist(),
            'C2': c2,#np.flip(ccStream.counter.getData()[1]* ccStream.getCouterNormalizationFactor()).tolist(),
            'CC12': cc12,#np.flip(ccStream.counter.getData()[2] * ccStream.getCouterNormalizationFactor()).tolist(),
            #'CR12': ccStream.correlation.getData().tolist()
        }
        return jsonify(message)  # serialize and use JSON headers


@app.route('/datagetrotations', methods=['GET', 'POST'])
def dataGetRot():
    # POST request
    if request.method == 'POST':
        print('Incoming..')
        print(request.get_json())  # parse as JSON
        return 'OK', 200

    # GET request
    else:
        message = {
            'p00': p00,#rEncoder.getPos00(),
            'p01': p01,#rEncoder.getPos01(),
            'p02': p01,#rEncoder.getPos02(),
        }
        return jsonify(message)  # serialize and use JSON headers

@app.route('/datagetsensors', methods=['GET', 'POST'])
def dataGetSens():
    # POST request
    if request.method == 'POST':
        print('Incoming..')
        print(request.get_json())  # parse as JSON
        return 'OK', 200

    # GET request
    else:
        message = {
            's01': s01,#rEncoder.getSens01(),
            's02': s02,#rEncoder.getSens02(),
        }
        return jsonify(message)  # serialize and use JSON headers

@app.route('/dataposttmp', methods=['GET', 'POST'])
def dataPostTemp():
    # POST request
    if request.method == 'POST':
        print('Incoming..')
        print(request.get_json(force=True))  # parse as JSON
        exportManager.saveTmp(request.get_json(force=True))
        return 'OK', 200

    # GET request
    else:
        message = "this is used to recieve the temporary data"
        return jsonify(message)  # serialize and use JSON headers

@app.route('/datapostexport', methods=['GET', 'POST'])
def dataPostExport():
    # POST request
    if request.method == 'POST':
        print('Incoming..')
        print(request.get_json(force=True))  # parse as JSON
        exportManager.export(request.get_json(force=True))
        return 'OK', 200

    # GET request
    else:
        message = "this is used to recieve the export"
        return jsonify(message)  # serialize and use JSON headers


def update_loop(loop_on):
    dirname = os.path.dirname(PySide2.__file__)
    plugin_path = os.path.join(dirname, 'plugins', 'platforms')
    os.environ['QT_QPA_PLATFORM_PLUGIN_PATH'] = plugin_path

    rEncoder = rotEncoderInterface("COM5")
    tagger = createTimeTagger()

    ccStream = CoincidencesNoUI(tagger)

    group = "BA-A-01"  # GruppenNamen im Praktikum
    type = "Web3D"  # or "MR"
    exportpath = "c:/ExportMiReQu/"

    exportManager = ExportManager(group, type, exportpath)

    while True:
      if loop_on.value == True:
          p00, p01, p02,s01, s02 = rEncoder.getPos00(),rEncoder.getPos01(),rEncoder.getPos02(), rEncoder.getSens01(),rEncoder.getSens02()
          print(p00, p01, p02,s01, s02)
      time.sleep(0.05)


if __name__ == "__main__":
   update_on = Value('b', True)
   p = Process(target=update_loop, args=(update_on,))
   p.start()
   app.run(use_reloader=False)
   p.join()