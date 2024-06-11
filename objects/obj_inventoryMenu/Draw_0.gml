//Draw set font
draw_set_font(global.font_main);

//center menu
x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2 - width/2) - w_offset/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

// Draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//Draw options
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < inv_length; i++) {
	var _c = c_white;
	if (selected_item == i) {
		_c = c_yellow;
	}
	//draw_text_color(x+op_border, y+op_border + op_space*i, global.inv[i], _c, _c, _c, _c, 1);
}

//If the inventory is empty
if (inv_length == 0) {
	var _xx = camera_get_view_x(view_camera[0]);
	var _yy = camera_get_view_y(view_camera[0]) + screen_bord;
	var _sep = sep;
	var _col = c_white;
	
	draw_text( _xx+ 36, _yy, "(No items to show)" );
}

//Draw the inventory
for (var i = 0; i < array_length(global.inv); i++) {
		var _xx = camera_get_view_x(view_camera[0]) + screen_bord;
		var _yy = camera_get_view_y(view_camera[0]) + screen_bord;
		var _sep = sep;
		var _col = c_white;
	
	
		//icon
		draw_sprite(global.inv[i].sprite, 0, _xx, _yy + _sep*i);
	
	
		//get "selected" color
		if selected_item == i { _col = c_yellow;};
		draw_set_color(_col);
	
		//name
		draw_text( _xx+ 36, _yy + _sep*i, global.inv[i].name );
	
		//description
		if selected_item == i {
			if(instance_exists(obj_flavorMenu)) {
				obj_flavorMenu.draw_desc(i);
				//draw_text_ext( _xx+0, _yy + _sep*array_length(global.inv), global.inv[i].description, 12, 80);
			}
		}
	
		//reset color to white
		draw_set_color(c_white);
}
	