/// @description Insert description here
// You can write your code in this editor

// Variable definitions
walkSpeed = 3;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;
myState = playerState.idle;
runSpeed = 0;
runMax = 5;
running = false;
nearbyNPC = noone;
nearbyInteractable = noone;
nearbyDoor = noone;
lookRange = 30;
iii = noone;

// Idle
playerSpr[playerState.idle][0] = spr_player_idle_right;
playerSpr[playerState.idle][1] = spr_player_idle_up;
playerSpr[playerState.idle][2] = spr_player_idle_left;
playerSpr[playerState.idle][3] = spr_player_idle_down;

// Walking
playerSpr[playerState.walking][0] = spr_player_walk_right;
playerSpr[playerState.walking][1] = spr_player_walk_up;
playerSpr[playerState.walking][2] = spr_player_walk_left;
playerSpr[playerState.walking][3] = spr_player_walk_down;

if (variable_global_exists("playerX") && variable_global_exists("playerY")) {
	if (global.playerX > 0 && global.playerY > 0) {
		//show_debug_message(x);	
		x = global.playerX;
		y = global.playerY;

	}
}