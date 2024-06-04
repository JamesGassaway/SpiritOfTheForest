/// @description Insert description here
// You can write your code in this editor

// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
accept_key = keyboard_check_pressed(vk_space);

//Variable definitions
var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);

//store number of options in current menu
op_length = array_length(option[menu_level]);

//show_debug_message(op_length);

//move throught the menu
pos += down_key - up_key;
if (pos >= op_length) {
	pos = 0;
}
if (pos < 0) {
	pos = op_length-1;
}

//using the options

if (accept_key&&global.menuCooldown==0) {
	global.menuCooldown=0;
	var _sml = menu_level;
	switch (menu_level) {	
		//pause menu
		case 0: {
			switch(pos) {
				//resume game
				case 0: 
					alarm[0] = 1; 
				break;
				//inventory
				case 1: 
					//menu_level = 1;
					instance_destroy();
					instance_create_depth(_camX,_camY,-20000,obj_inventoryMenu);
					instance_create_depth(_camX,_camY,-20000,obj_flavorMenu);
					//image_index = 1;
				break;
				//quit game
				case 2: 
					room_goto(rm_menu);
				break;
			}
		}
		case 1: {
			switch(pos) {
				//window size
				case 0: 
					menu_level = 0;
					image_index = 0;
				break;
				//brightness
			}
		}
	}
		// reset position to top
		if _sml != menu_level {pos = 0};
		// corect option length
		op_length = array_length(option[menu_level]);
}
