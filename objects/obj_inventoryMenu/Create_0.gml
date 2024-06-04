/// @description Insert description here
// You can write your code in this editor

w_offset = 150;
h_offset = 0;

width = camera_get_view_width(view_camera[0])-w_offset;
height = camera_get_view_height(view_camera[0]);

op_border = 16;
op_space = 24;

pos = 0;

//Inventory
option[0] = "";

inv_length = array_length(obj_item_manager.inv);
menu_level = 0;

chosen_item = noone;

selected_item = -1;
screen_bord = 16;
sep = 32;