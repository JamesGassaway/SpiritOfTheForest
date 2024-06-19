
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
	instance_create_depth(0, 0, -9000, obj_lockbok);
}
/*
if (global.playerControl == true) {
	if (keyboard_check_pressed(vk_space)) {
		create_textbox(text_id,source_id);
	}
}
*/