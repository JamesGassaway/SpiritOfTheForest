/// @description Insert description here
// You can write your code in this editor

// Mark Sequences layer
if (layer_exists("Cutscenes")) {
curSeqLayer = "Cutscenes";
}
else {
curSeqLayer = "Instances";
}

// Play the starting cutscene
//if (cutsceneState00 = false) {
	if (room = rm_startArea) {
	global.playerControl = false;
	global.cutSceneRunning = true;
	instance_create_depth(-10,-10,-10000,obj_cutscene00);
	}
//}