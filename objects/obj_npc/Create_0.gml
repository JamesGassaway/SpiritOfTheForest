/// @description Insert description here
// You can write your code in this editor

// Variable definitions
//myText = "";
text_id = "";
dir = 1;
defaultDir = 1;
// NPC sprites
npcSpr[npcState.idle][0] = spr_npc_idle_left;
npcSpr[npcState.idle][1] = spr_npc_idle_down;
npcSpr[npcState.idle][2] = spr_npc_idle_right;
npcSpr[npcState.idle][3] = spr_npc_idle_up;

//
npcSpr[npcState.talking][0] = spr_npc_talking_left;
npcSpr[npcState.talking][1] = spr_npc_talking_down;
npcSpr[npcState.talking][2] = spr_npc_talking_right;
npcSpr[npcState.talking][3] = spr_npc_talking_up;

// Dialogue for every room he's in.
/*
switch room {
	case rm_overworld: {
		myText = ["Hey, are you busy?", "You can look in my house if you want.", "Just enter the door over there."];
	}; break;
	case rm_house: {
		myText = ["Nice place I got, right?"]
	}; break;
}
*/

flashlight_recieved = false;
request_completed = false;

// Depth sorting
depth = -y;