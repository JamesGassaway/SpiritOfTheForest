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

if (global.gamePlaying == true && !instance_exists(obj_player)) {
	instance_create_depth(camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5), camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5), 0,obj_player)
}
if (global.gamePlaying == false && instance_exists(obj_player)) {
	instance_destroy(obj_player);	
}