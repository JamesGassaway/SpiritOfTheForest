/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_lockbok, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));

//option selection
option_pos += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
option_pos = clamp(option_pos, 0, lock_num);
	
	
//draw the options
var _op_space = 4;
var _op_bord = 8;
var _lockY = lock_y;

for (var op = 0; op < 4; op++) {
	//the option box
	//current_lock = instance_create_depth(lock_x + (lock_width + _op_space)*op, _lockY, -10000, obj_lockWheel);
	//current_lock.num = lock_wheel_values[op];
	//instance_create_depth(lock_x, _lockY, 0, obj_lockWheel, 0);
	//var _o_w = string_width(option[op]) + _op_bord*2;
	//draw_sprite_ext(lock_spr, 0, x_lock + 32, y_lock - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space -1)/txtb_spr_h, 0, c_white, 1);
		
	//the option text
	//draw_text(x_lock + 32 + _op_bord,  y_lock - _op_space*op + _op_space*op+ 2, lock_wheel[op]);
}