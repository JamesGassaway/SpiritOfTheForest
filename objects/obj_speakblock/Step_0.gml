/*
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	create_textbox(text_id);
}
*/
if (global.playerControl == true) {
	if (keyboard_check_pressed(vk_space)) {
		create_textbox(text_id);
	}
}