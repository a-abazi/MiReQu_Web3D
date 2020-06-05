package arm.node;

@:keep class UPH_001 extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetLocation = new armory.logicnode.SetLocationNode(this);
		var _OnMouse_001 = new armory.logicnode.OnMouseNode(this);
		_OnMouse_001.property0 = "Released";
		_OnMouse_001.property1 = "left";
		_OnMouse_001.addOutputs([_SetLocation]);
		_SetLocation.addInput(_OnMouse_001, 0);
		var _Object_004 = new armory.logicnode.ObjectNode(this);
		_Object_004.addInput(new armory.logicnode.ObjectNode(this, "UPH2_Schraube.001"), 0);
		var _TranslateObject = new armory.logicnode.TranslateObjectNode(this);
		var _Gate_004 = new armory.logicnode.GateNode(this);
		_Gate_004.property0 = "Equal";
		_Gate_004.property1 = 9.999999747378752e-05;
		var _OnMouse = new armory.logicnode.OnMouseNode(this);
		_OnMouse.property0 = "Down";
		_OnMouse.property1 = "left";
		var _Gate_008 = new armory.logicnode.GateNode(this);
		_Gate_008.property0 = "Equal";
		_Gate_008.property1 = 9.999999747378752e-05;
		_Gate_008.addInput(_OnMouse, 0);
		var _Object_005 = new armory.logicnode.ObjectNode(this);
		_Object_005.addInput(new armory.logicnode.ObjectNode(this, "UPH2_Top.001"), 0);
		var _SetTransform = new armory.logicnode.SetTransformNode(this);
		var _OnUpdate_001 = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate_001.property0 = "Update";
		var _SetTransform_001 = new armory.logicnode.SetTransformNode(this);
		_SetTransform_001.addInput(_OnUpdate_001, 0);
		var _Object_003 = new armory.logicnode.ObjectNode(this);
		_Object_003.addInput(new armory.logicnode.ObjectNode(this, "UPH2_Base.001"), 0);
		var _Gate_007 = new armory.logicnode.GateNode(this);
		_Gate_007.property0 = "Equal";
		_Gate_007.property1 = 9.999999747378752e-05;
		var _OnUpdate_003 = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate_003.property0 = "Update";
		_OnUpdate_003.addOutputs([_Gate_007]);
		_Gate_007.addInput(_OnUpdate_003, 0);
		_Gate_007.addInput(_Object_003, 0);
		var _PickObject_005 = new armory.logicnode.PickObjectNode(this);
		var _MouseCoords_005 = new armory.logicnode.MouseCoordsNode(this);
		_MouseCoords_005.addOutputs([_PickObject_005]);
		_MouseCoords_005.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		var _Math_009 = new armory.logicnode.MathNode(this);
		_Math_009.property0 = "Multiply";
		_Math_009.property1 = "false";
		_Math_009.addInput(_MouseCoords_005, 2);
		_Math_009.addInput(new armory.logicnode.FloatNode(this, 0.10000000149011612), 0);
		var _Vector_005 = new armory.logicnode.VectorNode(this);
		_Vector_005.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_005.addInput(_Math_009, 0);
		_Vector_005.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		var _TranslateObject_002 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_002.addInput(_Gate_007, 0);
		_TranslateObject_002.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_Base.001"), 0);
		_TranslateObject_002.addInput(_Vector_005, 0);
		_TranslateObject_002.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_Vector_005.addOutputs([_TranslateObject_002]);
		_Math_009.addOutputs([_Vector_005]);
		_MouseCoords_005.addOutputs([_Math_009]);
		_PickObject_005.addInput(_MouseCoords_005, 0);
		_PickObject_005.addOutputs([_Gate_007]);
		_PickObject_005.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_Gate_007.addInput(_PickObject_005, 0);
		_Gate_007.addOutputs([_TranslateObject_002]);
		_Object_003.addOutputs([_Gate_004, _SetTransform_001, _Gate_007]);
		_SetTransform_001.addInput(_Object_003, 0);
		var _GetTransform_001 = new armory.logicnode.GetTransformNode(this);
		_GetTransform_001.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_Base.001"), 0);
		_GetTransform_001.addOutputs([_SetTransform_001]);
		_SetTransform_001.addInput(_GetTransform_001, 0);
		_SetTransform_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetTransform_002 = new armory.logicnode.SetTransformNode(this);
		_SetTransform_002.addInput(_OnUpdate_001, 0);
		var _Object = new armory.logicnode.ObjectNode(this);
		_Object.addInput(new armory.logicnode.ObjectNode(this, "UPH2_Screw.001"), 0);
		var _Gate_005 = new armory.logicnode.GateNode(this);
		_Gate_005.property0 = "Equal";
		_Gate_005.property1 = 9.999999747378752e-05;
		var _OnUpdate = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate.property0 = "Update";
		_OnUpdate.addOutputs([_Gate_005]);
		_Gate_005.addInput(_OnUpdate, 0);
		_Gate_005.addInput(_Object, 0);
		var _PickObject_002 = new armory.logicnode.PickObjectNode(this);
		var _MouseCoords_002 = new armory.logicnode.MouseCoordsNode(this);
		_MouseCoords_002.addOutputs([_PickObject_002]);
		_MouseCoords_002.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Multiply";
		_Math.property1 = "false";
		_Math.addInput(_MouseCoords_002, 2);
		_Math.addInput(new armory.logicnode.FloatNode(this, 0.30000001192092896), 0);
		var _Vector_002 = new armory.logicnode.VectorNode(this);
		_Vector_002.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_002.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_002.addInput(_Math, 0);
		var _RotateObject_001 = new armory.logicnode.RotateObjectNode(this);
		_RotateObject_001.addInput(_Gate_005, 0);
		_RotateObject_001.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_Screw.001"), 0);
		_RotateObject_001.addInput(_Vector_002, 0);
		_RotateObject_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Vector_002.addOutputs([_RotateObject_001]);
		_Math.addOutputs([_Vector_002]);
		var _Math_007 = new armory.logicnode.MathNode(this);
		_Math_007.property0 = "Multiply";
		_Math_007.property1 = "false";
		_Math_007.addInput(_MouseCoords_002, 2);
		_Math_007.addInput(new armory.logicnode.FloatNode(this, 0.30000001192092896), 0);
		var _Vector_001 = new armory.logicnode.VectorNode(this);
		_Vector_001.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_001.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_001.addInput(_Math_007, 0);
		var _TranslateObject_001 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_001.addInput(_Gate_005, 0);
		_TranslateObject_001.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_post.001"), 0);
		_TranslateObject_001.addInput(_Vector_001, 0);
		_TranslateObject_001.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_Vector_001.addOutputs([_TranslateObject_001]);
		_Math_007.addOutputs([_Vector_001]);
		_MouseCoords_002.addOutputs([_Math, _Math_007]);
		_PickObject_002.addInput(_MouseCoords_002, 0);
		_PickObject_002.addOutputs([_Gate_005]);
		_PickObject_002.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_Gate_005.addInput(_PickObject_002, 0);
		_Gate_005.addOutputs([_TranslateObject_001, _RotateObject_001]);
		_Object.addOutputs([_SetTransform_002, _Gate_005]);
		_SetTransform_002.addInput(_Object, 0);
		var _GetTransform_002 = new armory.logicnode.GetTransformNode(this);
		_GetTransform_002.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_Screw.001"), 0);
		_GetTransform_002.addOutputs([_SetTransform_002]);
		_SetTransform_002.addInput(_GetTransform_002, 0);
		_SetTransform_002.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetTransform_003 = new armory.logicnode.SetTransformNode(this);
		_SetTransform_003.addInput(_OnUpdate_001, 0);
		var _Object_001 = new armory.logicnode.ObjectNode(this);
		_Object_001.addInput(new armory.logicnode.ObjectNode(this, "UPH2_Post.001"), 0);
		_Object_001.addOutputs([_SetTransform_003]);
		_SetTransform_003.addInput(_Object_001, 0);
		var _GetTransform_003 = new armory.logicnode.GetTransformNode(this);
		_GetTransform_003.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_post.001"), 0);
		_GetTransform_003.addOutputs([_SetTransform_003]);
		_SetTransform_003.addInput(_GetTransform_003, 0);
		_SetTransform_003.addOutputs([new armory.logicnode.NullNode(this)]);
		_OnUpdate_001.addOutputs([_SetTransform, _SetTransform_001, _SetTransform_002, _SetTransform_003]);
		_SetTransform.addInput(_OnUpdate_001, 0);
		_SetTransform.addInput(_Object_005, 0);
		var _GetTransform = new armory.logicnode.GetTransformNode(this);
		_GetTransform.addInput(new armory.logicnode.ObjectNode(this, "Ur_UPH2_Top.001"), 0);
		_GetTransform.addOutputs([_SetTransform]);
		_SetTransform.addInput(_GetTransform, 0);
		_SetTransform.addOutputs([new armory.logicnode.NullNode(this)]);
		var _Object_006 = new armory.logicnode.ObjectNode(this);
		_Object_006.addInput(_Object_005, 0);
		var _Gate_006 = new armory.logicnode.GateNode(this);
		_Gate_006.property0 = "Equal";
		_Gate_006.property1 = 9.999999747378752e-05;
		var _OnUpdate_002 = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate_002.property0 = "Update";
		_OnUpdate_002.addOutputs([_Gate_006]);
		_Gate_006.addInput(_OnUpdate_002, 0);
		_Gate_006.addInput(_Object_006, 0);
		var _PickObject_004 = new armory.logicnode.PickObjectNode(this);
		var _MouseCoords_004 = new armory.logicnode.MouseCoordsNode(this);
		_MouseCoords_004.addOutputs([_PickObject_004]);
		_MouseCoords_004.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		var _Math_012 = new armory.logicnode.MathNode(this);
		_Math_012.property0 = "Multiply";
		_Math_012.property1 = "false";
		_Math_012.addInput(_MouseCoords_004, 2);
		_Math_012.addInput(new armory.logicnode.FloatNode(this, 0.15707999467849731), 0);
		var _Vector_003 = new armory.logicnode.VectorNode(this);
		_Vector_003.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_003.addInput(new armory.logicnode.FloatNode(this, 0.0), 0);
		_Vector_003.addInput(_Math_012, 0);
		var _RotateObject = new armory.logicnode.RotateObjectNode(this);
		_RotateObject.addInput(_Gate_006, 0);
		_RotateObject.addInput(_Object_004, 0);
		_RotateObject.addInput(_Vector_003, 0);
		_RotateObject.addOutputs([new armory.logicnode.NullNode(this)]);
		_Vector_003.addOutputs([_RotateObject]);
		_Math_012.addOutputs([_Vector_003]);
		_MouseCoords_004.addOutputs([_Math_012]);
		_PickObject_004.addInput(_MouseCoords_004, 0);
		_PickObject_004.addOutputs([_Gate_006]);
		_PickObject_004.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_Gate_006.addInput(_PickObject_004, 0);
		_Gate_006.addOutputs([_RotateObject]);
		_Object_006.addOutputs([_Gate_006]);
		_Object_005.addOutputs([_SetTransform, _Object_006, _Gate_008]);
		_Gate_008.addInput(_Object_005, 0);
		var _PickObject_003 = new armory.logicnode.PickObjectNode(this);
		var _MouseCoords_003 = new armory.logicnode.MouseCoordsNode(this);
		_MouseCoords_003.addOutputs([_PickObject_003]);
		var _VectorMath_001 = new armory.logicnode.VectorMathNode(this);
		_VectorMath_001.property0 = "Multiply";
		_VectorMath_001.addInput(_MouseCoords_003, 1);
		_VectorMath_001.addInput(new armory.logicnode.VectorNode(this, -0.10000000149011612, 0.10000000149011612, 0.0), 0);
		var _TranslateObject_003 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_003.addInput(_Gate_008, 0);
		_TranslateObject_003.addInput(_Object_004, 0);
		_TranslateObject_003.addInput(_VectorMath_001, 0);
		_TranslateObject_003.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_003.addOutputs([new armory.logicnode.NullNode(this)]);
		_VectorMath_001.addOutputs([_TranslateObject, _TranslateObject_003]);
		_VectorMath_001.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_MouseCoords_003.addOutputs([_VectorMath_001]);
		_MouseCoords_003.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_PickObject_003.addInput(_MouseCoords_003, 0);
		_PickObject_003.addOutputs([_Gate_004, _Gate_008]);
		_PickObject_003.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_Gate_008.addInput(_PickObject_003, 0);
		_Gate_008.addOutputs([_TranslateObject_003]);
		_OnMouse.addOutputs([_Gate_004, _Gate_008]);
		_Gate_004.addInput(_OnMouse, 0);
		_Gate_004.addInput(_Object_003, 0);
		_Gate_004.addInput(_PickObject_003, 0);
		_Gate_004.addOutputs([_TranslateObject]);
		_TranslateObject.addInput(_Gate_004, 0);
		_TranslateObject.addInput(_Object_004, 0);
		_TranslateObject.addInput(_VectorMath_001, 0);
		_TranslateObject.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject.addOutputs([new armory.logicnode.NullNode(this)]);
		var _GetLocation = new armory.logicnode.GetLocationNode(this);
		_GetLocation.addInput(_Object_004, 0);
		var _SeparateXYZ = new armory.logicnode.SeparateVectorNode(this);
		_SeparateXYZ.addInput(_GetLocation, 0);
		var _Math_001 = new armory.logicnode.MathNode(this);
		_Math_001.property0 = "Divide";
		_Math_001.property1 = "false";
		_Math_001.addInput(_SeparateXYZ, 0);
		var _Float = new armory.logicnode.FloatNode(this);
		_Float.addInput(new armory.logicnode.FloatNode(this, 2.5), 0);
		var _Math_004 = new armory.logicnode.MathNode(this);
		_Math_004.property0 = "Multiply";
		_Math_004.property1 = "false";
		var _Math_002 = new armory.logicnode.MathNode(this);
		_Math_002.property0 = "Round";
		_Math_002.property1 = "false";
		_Math_002.addInput(_Math_001, 0);
		_Math_002.addInput(new armory.logicnode.FloatNode(this, 0.5), 0);
		_Math_002.addOutputs([_Math_004]);
		_Math_004.addInput(_Math_002, 0);
		_Math_004.addInput(_Float, 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		_Vector.addInput(_Math_004, 0);
		var _Math_006 = new armory.logicnode.MathNode(this);
		_Math_006.property0 = "Multiply";
		_Math_006.property1 = "false";
		var _Math_005 = new armory.logicnode.MathNode(this);
		_Math_005.property0 = "Round";
		_Math_005.property1 = "false";
		var _Math_003 = new armory.logicnode.MathNode(this);
		_Math_003.property0 = "Divide";
		_Math_003.property1 = "false";
		_Math_003.addInput(_SeparateXYZ, 1);
		_Math_003.addInput(_Float, 0);
		_Math_003.addOutputs([_Math_005]);
		_Math_005.addInput(_Math_003, 0);
		_Math_005.addInput(new armory.logicnode.FloatNode(this, 0.5), 0);
		_Math_005.addOutputs([_Math_006]);
		_Math_006.addInput(_Math_005, 0);
		_Math_006.addInput(_Float, 0);
		_Math_006.addOutputs([_Vector]);
		_Vector.addInput(_Math_006, 0);
		_Vector.addInput(new armory.logicnode.FloatNode(this, 0.5600000023841858), 0);
		_Vector.addOutputs([_SetLocation]);
		_Math_004.addOutputs([_Vector]);
		_Float.addOutputs([_Math_004, _Math_006, _Math_001, _Math_003]);
		_Math_001.addInput(_Float, 0);
		_Math_001.addOutputs([_Math_002]);
		_SeparateXYZ.addOutputs([_Math_001]);
		_SeparateXYZ.addOutputs([_Math_003]);
		_SeparateXYZ.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_GetLocation.addOutputs([_SeparateXYZ]);
		_Object_004.addOutputs([_TranslateObject, _SetLocation, _GetLocation, _RotateObject, _TranslateObject_003]);
		_SetLocation.addInput(_Object_004, 0);
		_SetLocation.addInput(_Vector, 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}