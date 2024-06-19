/// @description Insert description here
// You can write your code in this editor

draw_sprite(mySprite, 0, x, y);

//the arrows
if (createArrows == false) {
	upArrow = instance_create_depth(x, y - arrow_height - op_bord, -10000, obj_arrowUp);
	downArrow = instance_create_depth(x, y + lock_width + op_bord, -10000, obj_arrowDown);
	createArrows = true;
}
//draw_sprite(spr_upArrow, 0, x +(lock_width + _op_space)*op, lock_y - arrow_height - _op_bord);
//draw_sprite(spr_downArrow, 0, lock_x  + (lock_width + _op_space)*op, lock_y + lock_height + _op_space);

//which num is selected
var _c = c_white;
if (obj_lockbok.option_pos == selection) {
	_c = c_yellow;
}
draw_text_color(x + op_bord + text_bord_x, y + text_bord_y, obj_lockbok.lock_wheel_values[selection], _c, _c, _c, _c, 1);


var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
	
if (up && obj_lockbok.option_pos == selection && selectionTimer == 0) {
	if (shiftUp == false) {
		upArrow.y -= 10;
		shiftUp = true;
	}
	selectionTimer = 30;
	if (obj_lockbok.lock_wheel_values[selection] == 9) {
		obj_lockbok.lock_wheel_values[selection] = 0;
	}
	else {
		obj_lockbok.lock_wheel_values[selection] += 1;
	}
}
else if (selectionTimer > 0) {
	selectionTimer -= 1;

}

if (selectionTimer < 16) {
	if (shiftUp == true) {
		upArrow.y += 10;
		shiftUp = false;
	}	
	if (shiftDown == true) {
		downArrow.y -= 10;
		shiftDown = false;
	}	
}

if (down && obj_lockbok.option_pos == selection && selectionTimer == 0) {
	if (shiftDown == false) {
		downArrow.y += 10;
		shiftDown = true;
	}
	selectionTimer = 30;
	if (obj_lockbok.lock_wheel_values[selection] == 0) {
		obj_lockbok.lock_wheel_values[selection] = 9;
	}
	else {
		obj_lockbok.lock_wheel_values[selection] -= 1;
	}
}
else if (selectionTimer > 0) {
	selectionTimer -= 1;

}