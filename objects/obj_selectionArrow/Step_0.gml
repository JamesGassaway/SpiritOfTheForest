/// @description Insert description here
// You can write your code in this editor

if (obj_lockbok.option_pos == 4)
	image_index = 1;
else {
	image_index = 0;
}

var _enter = keyboard_check(vk_space);

if (_enter && obj_lockbok.option_pos == 4) {
	if (obj_lockbok.lock_wheel_values[0] == correctCode[0] && obj_lockbok.lock_wheel_values[1] == correctCode[1] && obj_lockbok.lock_wheel_values[2] == correctCode[2] && obj_lockbok.lock_wheel_values[3] == correctCode[3]) {
		create_textbox("puzzle - success", "inter");
	}
	else {
		create_textbox("puzzle - failure", "inter");
	}
	alarm[0] = 1;
}