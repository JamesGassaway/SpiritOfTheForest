/// @description Insert description here
// You can write your code in this editor

//Change the room location
room_goto(target_rm);
obj_player.x = target_x;
obj_player.y = target_y;
obj_player.dir = target_face;

//Play its animation backwards
image_speed = -1;