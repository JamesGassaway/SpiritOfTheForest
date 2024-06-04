//Draw set font
draw_set_font(global.font_main);

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - width;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

// Draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//Draw options
draw_set_valign(fa_top);
draw_set_halign(fa_left);