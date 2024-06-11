/// @description Insert description here
// You can write your code in this editor

// Variable definitions
var _text;
var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);

// Open a door if the player is nearby one
if (nearbyDoor) {
	if (nearbyDoor.myState == doorState.closed) {
		nearbyDoor.myState = doorState.opening;
	}
}


if (nearbyNPC && global.playerControl == true && global.textBoxCooldown == 0) {
	_text = nearbyNPC.text_id;
	_source = nearbyNPC.source_id;
	//show_debug_message(_text);
	//nearbyNPC.myState = npcState.talking;
	nearbyNPC.dir = dir;
	global.textBoxCooldown = 10;
	create_textbox(_text,_source);
}


/*
// Create a textbox if NPC is nearby
if (nearbyNPC && global.playerControl == true) {
	_text = nearbyNPC.myText;
//show_debug_message(_text);
	nearbyNPC.myState = npcState.talking;
	nearbyNPC.dir = dir;
	if (!instance_exists(obj_textbox)) {
		iii = instance_create_depth(_camX,_camY+120,-10000,obj_textbox);
		iii.textToShow = _text;
		iii.phase = 0;
		iii.npc = nearbyNPC;
	}
}
*/