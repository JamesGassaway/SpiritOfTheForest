/// @description Insert description here
// You can write your code in this editor

// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

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
	global.menuCooldown = 10;
	var _sml = menu_level;
	switch (menu_level) {	
		//pause menu
		case 0: {
			switch(pos) {
				//choose room
				case 0: menu_level = 1; break;
				//quit game
				case 1: game_end(); break;
			}
		}
		case 1: {
			switch(pos) {
				//place holder
				case 0: break;
				//overworld
				case 1: room_goto(rm_overworld) break;
				//start area
				case 2: room_goto(rm_startArea) break;
				//house
				case 3: room_goto(rm_house) break;
				//test
				case 4: room_goto(rm_test) break;
				//back
				case 5: menu_level = 0; break;
			}
		}
	}
		// reset position to top
		if _sml != menu_level {pos = 0};
		// corect option length
		op_length = array_length(option[menu_level]);
}