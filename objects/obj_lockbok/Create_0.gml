/// @description Insert description here
// You can write your code in this editor

// Seleciton variables
selection = 0;

//Coordinates for the lock wheels
lock_x = 200;
lock_y = 180;
lock_space = 16;
lock_width = 64;
lock_height = 64;
lock_spr = spr_lockWheel;
lock_num = 4;

arrow_height = 24;

option_pos = 0;
option_number = 0;

lock_wheel_values = [0, 0, 0, 0];

//draw the options
op_space = 4;
op_bord = 8;

text_bord_x = 6;
text_bord_y = 16;

for (var op = 0; op < 4; op++) {
	//the option box
	current_lock = instance_create_depth(lock_x + (lock_width + op_space)*op, lock_y, -100000, obj_lockWheel);
	current_lock.num = lock_wheel_values[op];
	/*
	current_lock.lock_width = lock_width;
	current_lock.op_space = op_space;
	current_lock.op_bord = op_bord;
	current_lock.arrow_height = arrow_height;
	current_lock.text_bord_x = text_bord_x;
	current_lock.text_bord_y = text_bord_y;
	*/
	current_lock.selection = op;
	
	//instance_create_depth(lock_x, _lockY, 0, obj_lockWheel, 0);
	//var _o_w = string_width(option[op]) + _op_bord*2;
	//draw_sprite_ext(lock_spr, 0, x_lock + 32, y_lock - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space -1)/txtb_spr_h, 0, c_white, 1);
		
	//the option text
	//draw_text(x_lock + 32 + _op_bord,  y_lock - _op_space*op + _op_space*op+ 2, lock_wheel[op]);
}

instance_create_depth(lock_x + (lock_width + op_space)*4, lock_y, -100000, obj_selectionArrow)