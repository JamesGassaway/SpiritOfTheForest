/// @description Insert description here
// You can write your code in this editor
iii = noone;
cutsceneComplete = false;
phase = 0;
myState = cutsceneState.playing;
global.cutSceneRunning = true;
i = 0;
textToShow = ["Default Text"];
camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
	if (instance_exists(obj_player)){
		with (obj_player) {
		x = -45;
		y = 217;
		}
}