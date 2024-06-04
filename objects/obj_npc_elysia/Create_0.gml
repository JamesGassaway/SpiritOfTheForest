/// @description Insert description here
// You can write your code in this editor

// Variable definitions
//myText = "";
text_id = "";
dir = 1;
defaultDir = 1;

// NPC sprites
npcSpr[npcState.idle][0] = spr_elysia_idle_left;
npcSpr[npcState.idle][1] = spr_elysia_idle_down;
npcSpr[npcState.idle][2] = spr_elysia_idle_right;
npcSpr[npcState.idle][3] = spr_elysia_idle_up;

//
npcSpr[npcState.talking][0] = spr_elysia_talking_left;
npcSpr[npcState.talking][1] = spr_elysia_talking_down;
npcSpr[npcState.talking][2] = spr_elysia_talking_right;
npcSpr[npcState.talking][3] = spr_elysia_talking_up;

// Dialogue for every room he's in.
switch room {
	case rm_overworld: {
		myText = ["This is Elysia's text."];
	}; break;
	case rm_house: {
		myText = ["This is still Elysia's text."]
	}; break;
}
	
// Depth sorting
depth = -y;