/// @description Insert description here
// You can write your code in this editor

// Variable definitions
textToShow = "Textbox!";
global.playerControl = false;
coolDown = 0;
phase = 0;
npc = noone;

_camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
_camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
