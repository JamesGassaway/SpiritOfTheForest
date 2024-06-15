/// @description Insert description here
// You can write your code in this editor

//Variable definitions
var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);

// Open the pause menu
if (instance_exists(obj_inventoryMenu)) {
	global.menuCooldown = 10;
	instance_destroy(obj_inventoryMenu);
	if(instance_exists(obj_flavorMenu)) {
		instance_destroy(obj_flavorMenu);
	}
	global.playerControl = true;
}
else if(!instance_exists(obj_pauseMenu)&&global.menuCooldown==0&&global.pauseControl) {
	global.menuCooldown = 10;
	//show_debug_message("Menu activated");
	global.playerControl = false;
	instance_create_depth(_camX,_camY,-20000,obj_pauseMenu);
}
else if (instance_exists(obj_pauseMenu)&&global.menuCooldown==0) {
	global.menuCooldown = 10;
	instance_destroy(obj_pauseMenu);
	global.playerControl = true;
}