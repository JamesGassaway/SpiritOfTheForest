/// @description Insert description here
// You can write your code in this editor

// Variable definitions
myText = "";
dir = 1;
defaultDir = 1;

// NPC sprites
npcSpr[npcState.idle][0] = spr_takoda_idle_left;
npcSpr[npcState.idle][1] = spr_takoda_idle_down;
npcSpr[npcState.idle][2] = spr_takoda_idle_right;
npcSpr[npcState.idle][3] = spr_takoda_idle_up;

//
npcSpr[npcState.talking][0] = spr_takoda_talking_left;
npcSpr[npcState.talking][1] = spr_takoda_talking_down;
npcSpr[npcState.talking][2] = spr_takoda_talking_right;
npcSpr[npcState.talking][3] = spr_takoda_talking_up;

// Depth sorting
depth = -y;