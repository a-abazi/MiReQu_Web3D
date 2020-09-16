package arm;

import iron.math.Vec4;
import iron.object.Object;
import iron.math.Quat;
import Math;

class BBO_v1 extends iron.Trait {
	public function new() {
		super();

		@prop
		var String_Beam_Ray_Traits: String = "BBO_v1";
		
		@prop
		var changes_prop:Bool = false;
		
		@prop
        var blocksBeam: Bool = false;
        
        //@prop
        var spawnsRays: Int = 2;

		notifyOnInit(function() {

			if (object == null) return;
			if (object.properties == null) object.properties = new Map();
			object.properties.set("String_Beam_Ray_Traits", String_Beam_Ray_Traits);
			object.properties.set("changes_prop",changes_prop);
            object.properties.set("blocksBeam",blocksBeam);
            object.properties.set("spawnsRays",spawnsRays);
		});

		// notifyOnUpdate(function() {
		// });

		// notifyOnRemove(function() {
		// });
	}
	
	public function GetBeamDirection(in_dir:Vec4){
        return in_dir;
    }


	public function ConfrimSpawnCondition(parBeam:Object):Bool{

		return true;
	}



    public function GetNewBeamDirection(in_dir:Vec4, beamNumber:Int):Vec4{
		var spawnsRays: Int = object.properties.get("spawnsRays");
		var angle: Float = 5.0;
		var PI: Float = Math.PI;
		
		angle = PI / 180.0 * angle;


        if (beamNumber>=spawnsRays){
            trace("Error: tried to spawn more Beams from source than possible");
            return null;
        }        
        var out_dir = new Vec4().setFrom(in_dir);
		var axis: Vec4 = object.transform.world.up();
		axis.normalize();
		
		if (beamNumber == 1) angle = angle * -1;
		
		out_dir.applyAxisAngle(axis,angle);

		

        return out_dir;
    }
    
    public function GetNewChildProperties(parBeam:Object, beamNumber:Int){
        var spawnsRays: Int = object.properties.get("spawnsRays");
		var emptyArray: Array <Object> = new Array();
		var up_vec: Vec4 = object.transform.world.up().normalize();
		//TODO: here switched, depends on model in blender 
		var right_vec: Vec4 = object.transform.world.look().normalize(); 
		var normal_vec: Vec4 = object.transform.world.right().normalize();

        if (beamNumber>=spawnsRays){
            trace("Error: tried to spawn more Beams from source than possible");
            return null;
        }
		var propMap = new  Map<String,Dynamic>();
		
        // calculate the angle of the fast axis (up vec)
        var vcross = new Vec4(0,0,1,1).cross(right_vec);
        var vb = new Vec4().setFrom(right_vec);
        var va = new Vec4(0,0,1,1);
        var theta = Math.atan2(vcross.dot(normal_vec),va.dot(vb));
        if (normal_vec.dot(parBeam.transform.world.right())<0) theta*=-1;
        
		if (parBeam == null) return null;
        if (parBeam.properties == null) parBeam.properties = new Map();
		propMap = parBeam.properties.copy();
		
		propMap["wl"] = 810;
		propMap["stokes_psi"] = 0;
		propMap["stokes_p"] = 0;
		propMap["stokes_I"]*= Math.pow(Math.cos(theta-parBeam.properties.get("stokes_psi")),2);


		propMap.set("arr_sub_objects",emptyArray);
		
        return propMap;
	}
}
