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
if (accept_key && global.menuCooldown==0) {
	global.menuCooldown = 30;
	var _sml = menu_level;
	switch (menu_level) {	
		//pause menu
		case 0: {
			switch(pos) {
				//choose room
				case 0: menu_level = 1; break;
				//load game
				case 1: menu_level = 2; break;
				//quit game
				case 2: game_end(); break;
			}
			break;
		}
		case 1: {
			switch(pos) {
				//overworld
				case 0: global.gamePlaying = true; room_goto(rm_overworld) break;
				//start area
				case 1: global.gamePlaying = true; room_goto(rm_startArea) break;
				//house
				case 2: global.gamePlaying = true; room_goto(rm_house) break;
				//test
				case 3: room_goto(rm_test) break;
				//extra room
				case 4: global.gamePlaying = true; room_goto(rm_extraArea) break;
				//elysia's house
				case 5: global.gamePlaying = true; room_goto(rm_elysia_house) break;
				//back
				case 6: menu_level = 0; image_index=0; break;
			}
			break;
		}
		case 2: {
			switch(pos) {
				//window size
				case 0: 
					global.gamePlaying = true; 
					load_game(0);
				break;
				case 1: 
					global.gamePlaying = true; 
					load_game(1);
				break;
				case 2: 
					global.gamePlaying = true;
					load_game(2);
				break;
				case 3:
					menu_level = 0;
					image_index = 0;
				break;
			}
			break;
		}
	}
		// reset position to top
		if _sml != menu_level {pos = 0};
		// corect option length
		op_length = array_length(option[menu_level]);
}