// get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
accept_key = keyboard_check_pressed(vk_space);
exit_key = keyboard_check_pressed(vk_escape);

//move throught the menu

pos += down_key - up_key;
selected_item += down_key - up_key;
if (chosen_item == noone) {
	if (selected_item >= inv_length) {
		pos = 0;
		selected_item = 0;
	}
	if (selected_item < 0) {
		pos = inv_length-1;
		selected_item = inv_length-1;
	}
}
//using the options
if (accept_key && global.menuCooldown == 0) {
	global.menuCooldown = 10;
	chosen_item = global.inv[selected_item];
	instance_destroy(obj_flavorMenu);
	instance_destroy();
	//global.inv[selected_item].effect();
	scr_item_effects(global.inv[selected_item].effect);
		// corect option length
		inv_length = array_length(global.inv);
}

// close the menu-ish
/*
if (exit_key && global.menuCooldown == 0) {
	global.menuCooldown = 10;
	//if (!(chosen_item == noone)) {
		chosen_item = noone
	//}
	//else {
		alarm[0] = 1;
	//}
}
*/