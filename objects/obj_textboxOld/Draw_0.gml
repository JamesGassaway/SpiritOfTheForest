/// @description Insert description here
// You can write your code in this editor

// Draw textbox variables
draw_self();
textWidth = 450;
lineHeight = 28;

// Draw Text
draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext_color(x,y,textToShow[phase],lineHeight,textWidth,c_white,c_white,c_white,c_white,1);

