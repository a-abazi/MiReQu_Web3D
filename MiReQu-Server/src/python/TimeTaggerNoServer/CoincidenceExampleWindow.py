# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'CoincidenceExampleWindow.ui',
# licensing of 'CoincidenceExampleWindow.ui' applies.
#
# Created: Fri Jun 21 11:03:05 2019
#      by: pyside2-uic  running on PySide2 5.12.3
#
# WARNING! All changes made in this file will be lost!

from PySide2 import QtCore, QtGui, QtWidgets

class Ui_CoincidenceExample(object):
    def setupUi(self, CoincidenceExample):
        CoincidenceExample.setObjectName("CoincidenceExample")
        CoincidenceExample.resize(859, 811)
        self.centralwidget = QtWidgets.QWidget(CoincidenceExample)
        self.centralwidget.setEnabled(True)
        self.centralwidget.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayout = QtWidgets.QVBoxLayout(self.centralwidget)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.label_13 = QtWidgets.QLabel(self.centralwidget)
        self.label_13.setObjectName("label_13")
        self.gridLayout.addWidget(self.label_13, 0, 6, 1, 1)
        self.delayB = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.delayB.sizePolicy().hasHeightForWidth())
        self.delayB.setSizePolicy(sizePolicy)
        self.delayB.setMinimum(-99999)
        self.delayB.setMaximum(99999)
        self.delayB.setObjectName("delayB")
        self.gridLayout.addWidget(self.delayB, 4, 2, 1, 1)
        self.delayA = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.delayA.sizePolicy().hasHeightForWidth())
        self.delayA.setSizePolicy(sizePolicy)
        self.delayA.setMinimum(-99999)
        self.delayA.setMaximum(99999)
        self.delayA.setObjectName("delayA")
        self.gridLayout.addWidget(self.delayA, 2, 2, 1, 1)
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 1, 1, 1)
        self.label_11 = QtWidgets.QLabel(self.centralwidget)
        self.label_11.setObjectName("label_11")
        self.gridLayout.addWidget(self.label_11, 4, 0, 1, 1)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        spacerItem = QtWidgets.QSpacerItem(0, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_3.addItem(spacerItem)
        self.testsignalB = QtWidgets.QCheckBox(self.centralwidget)
        self.testsignalB.setText("")
        self.testsignalB.setObjectName("testsignalB")
        self.horizontalLayout_3.addWidget(self.testsignalB)
        spacerItem1 = QtWidgets.QSpacerItem(0, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_3.addItem(spacerItem1)
        self.gridLayout.addLayout(self.horizontalLayout_3, 4, 6, 1, 1)
        self.channelB = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.channelB.sizePolicy().hasHeightForWidth())
        self.channelB.setSizePolicy(sizePolicy)
        self.channelB.setMinimum(-99)
        self.channelB.setProperty("value", 2)
        self.channelB.setObjectName("channelB")
        self.gridLayout.addWidget(self.channelB, 4, 1, 1, 1)
        self.label_12 = QtWidgets.QLabel(self.centralwidget)
        self.label_12.setObjectName("label_12")
        self.gridLayout.addWidget(self.label_12, 0, 4, 1, 1)
        self.label_10 = QtWidgets.QLabel(self.centralwidget)
        self.label_10.setObjectName("label_10")
        self.gridLayout.addWidget(self.label_10, 2, 0, 1, 1)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        spacerItem2 = QtWidgets.QSpacerItem(0, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem2)
        self.testsignalA = QtWidgets.QCheckBox(self.centralwidget)
        self.testsignalA.setLayoutDirection(QtCore.Qt.LeftToRight)
        self.testsignalA.setAutoFillBackground(False)
        self.testsignalA.setStyleSheet("")
        self.testsignalA.setText("")
        self.testsignalA.setChecked(False)
        self.testsignalA.setAutoRepeat(False)
        self.testsignalA.setObjectName("testsignalA")
        self.horizontalLayout_4.addWidget(self.testsignalA)
        spacerItem3 = QtWidgets.QSpacerItem(0, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_4.addItem(spacerItem3)
        self.gridLayout.addLayout(self.horizontalLayout_4, 2, 6, 1, 1)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 0, 2, 1, 1)
        self.channelA = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.channelA.sizePolicy().hasHeightForWidth())
        self.channelA.setSizePolicy(sizePolicy)
        self.channelA.setMinimum(-99)
        self.channelA.setProperty("value", 1)
        self.channelA.setObjectName("channelA")
        self.gridLayout.addWidget(self.channelA, 2, 1, 1, 1)
        self.triggerA = QtWidgets.QDoubleSpinBox(self.centralwidget)
        self.triggerA.setMinimum(-2.5)
        self.triggerA.setMaximum(2.5)
        self.triggerA.setSingleStep(0.1)
        self.triggerA.setProperty("value", 0.5)
        self.triggerA.setObjectName("triggerA")
        self.gridLayout.addWidget(self.triggerA, 2, 4, 1, 1)
        self.triggerB = QtWidgets.QDoubleSpinBox(self.centralwidget)
        self.triggerB.setMinimum(-2.5)
        self.triggerB.setMaximum(2.5)
        self.triggerB.setSingleStep(0.1)
        self.triggerB.setProperty("value", 0.5)
        self.triggerB.setObjectName("triggerB")
        self.gridLayout.addWidget(self.triggerB, 4, 4, 1, 1)
        self.horizontalLayout.addLayout(self.gridLayout)
        spacerItem4 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout.addItem(spacerItem4)
        self.gridLayout_3 = QtWidgets.QGridLayout()
        self.gridLayout_3.setObjectName("gridLayout_3")
        self.correlationBinwidth = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.correlationBinwidth.sizePolicy().hasHeightForWidth())
        self.correlationBinwidth.setSizePolicy(sizePolicy)
        self.correlationBinwidth.setMinimum(1)
        self.correlationBinwidth.setMaximum(9999)
        self.correlationBinwidth.setProperty("value", 40)
        self.correlationBinwidth.setObjectName("correlationBinwidth")
        self.gridLayout_3.addWidget(self.correlationBinwidth, 1, 1, 1, 1)
        self.correlationBins = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.correlationBins.sizePolicy().hasHeightForWidth())
        self.correlationBins.setSizePolicy(sizePolicy)
        self.correlationBins.setMinimum(1)
        self.correlationBins.setMaximum(99999)
        self.correlationBins.setProperty("value", 1000)
        self.correlationBins.setObjectName("correlationBins")
        self.gridLayout_3.addWidget(self.correlationBins, 2, 1, 1, 1)
        self.label_7 = QtWidgets.QLabel(self.centralwidget)
        self.label_7.setObjectName("label_7")
        self.gridLayout_3.addWidget(self.label_7, 2, 0, 1, 1)
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setObjectName("label_6")
        self.gridLayout_3.addWidget(self.label_6, 1, 0, 1, 1)
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        self.label_5.setObjectName("label_5")
        self.gridLayout_3.addWidget(self.label_5, 0, 0, 1, 1)
        self.coincidenceWindow = QtWidgets.QSpinBox(self.centralwidget)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.coincidenceWindow.sizePolicy().hasHeightForWidth())
        self.coincidenceWindow.setSizePolicy(sizePolicy)
        self.coincidenceWindow.setMinimum(1)
        self.coincidenceWindow.setMaximum(9999)
        self.coincidenceWindow.setProperty("value", 4000)
        self.coincidenceWindow.setObjectName("coincidenceWindow")
        self.gridLayout_3.addWidget(self.coincidenceWindow, 0, 1, 1, 1)
        self.horizontalLayout.addLayout(self.gridLayout_3)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.plotLayout = QtWidgets.QVBoxLayout()
        self.plotLayout.setObjectName("plotLayout")
        self.verticalLayout.addLayout(self.plotLayout)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.startButton = QtWidgets.QPushButton(self.centralwidget)
        self.startButton.setObjectName("startButton")
        self.horizontalLayout_2.addWidget(self.startButton)
        self.stopButton = QtWidgets.QPushButton(self.centralwidget)
        self.stopButton.setObjectName("stopButton")
        self.horizontalLayout_2.addWidget(self.stopButton)
        self.clearButton = QtWidgets.QPushButton(self.centralwidget)
        self.clearButton.setObjectName("clearButton")
        self.horizontalLayout_2.addWidget(self.clearButton)
        self.saveButton = QtWidgets.QPushButton(self.centralwidget)
        self.saveButton.setObjectName("saveButton")
        self.horizontalLayout_2.addWidget(self.saveButton)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        CoincidenceExample.setCentralWidget(self.centralwidget)
        self.label_2.setBuddy(self.label_2)

        self.retranslateUi(CoincidenceExample)
        QtCore.QMetaObject.connectSlotsByName(CoincidenceExample)
        CoincidenceExample.setTabOrder(self.channelA, self.delayA)
        CoincidenceExample.setTabOrder(self.delayA, self.triggerA)
        CoincidenceExample.setTabOrder(self.triggerA, self.testsignalA)
        CoincidenceExample.setTabOrder(self.testsignalA, self.channelB)
        CoincidenceExample.setTabOrder(self.channelB, self.delayB)
        CoincidenceExample.setTabOrder(self.delayB, self.triggerB)
        CoincidenceExample.setTabOrder(self.triggerB, self.testsignalB)
        CoincidenceExample.setTabOrder(self.testsignalB, self.coincidenceWindow)
        CoincidenceExample.setTabOrder(self.coincidenceWindow, self.correlationBinwidth)
        CoincidenceExample.setTabOrder(self.correlationBinwidth, self.correlationBins)
        CoincidenceExample.setTabOrder(self.correlationBins, self.startButton)
        CoincidenceExample.setTabOrder(self.startButton, self.stopButton)
        CoincidenceExample.setTabOrder(self.stopButton, self.clearButton)
        CoincidenceExample.setTabOrder(self.clearButton, self.saveButton)

    def retranslateUi(self, CoincidenceExample):
        CoincidenceExample.setWindowTitle(QtWidgets.QApplication.translate("CoincidenceExample", "CoincidenceExample", None, -1))
        self.label_13.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Test signal", None, -1))
        self.delayB.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " ps", None, -1))
        self.delayA.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " ps", None, -1))
        self.label.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Input channel", None, -1))
        self.label_11.setText(QtWidgets.QApplication.translate("CoincidenceExample", "B:", None, -1))
        self.label_12.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Trigger level", None, -1))
        self.label_10.setText(QtWidgets.QApplication.translate("CoincidenceExample", "A:", None, -1))
        self.label_2.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Input delay", None, -1))
        self.triggerA.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " V", None, -1))
        self.triggerB.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " V", None, -1))
        self.correlationBinwidth.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " ps", None, -1))
        self.label_7.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Correlation bins", None, -1))
        self.label_6.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Correlation bin width", None, -1))
        self.label_5.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Coincidence window", None, -1))
        self.coincidenceWindow.setSuffix(QtWidgets.QApplication.translate("CoincidenceExample", " ps", None, -1))
        self.startButton.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Start", None, -1))
        self.stopButton.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Stop", None, -1))
        self.clearButton.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Clear", None, -1))
        self.saveButton.setText(QtWidgets.QApplication.translate("CoincidenceExample", "Save", None, -1))
