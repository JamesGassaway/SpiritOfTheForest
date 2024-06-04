/// @description Insert description here
// You can write your code in this editor

w_offset = 150;
h_offset = 0;

width = w_offset;
height = camera_get_view_height(view_camera[0]);

op_border = 16;
op_space = 24;

pos = 0;

//Inventory
option[0] = "";

menu_level = 0;

chosen_item = noone;

selected_item = -1;
screen_bord = 16;
sep = 32;

function draw_desc(_item) {
	var _xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - width + screen_bord;
	var _yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2 + screen_bord;
	var _sep = sep;	
	var _col = c_white;
	
	draw_text_ext( _xx+0, _yy, obj_item_manager.inv[_item].description, 12, 80);

}
