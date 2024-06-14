/// @description Insert description here
// You can write your code in this editor

// Check keys for movement
if (global.playerControl == true) {
	moveRight = keyboard_check(vk_right);
	moveUp = keyboard_check(vk_up);
	moveLeft = keyboard_check(vk_left);
	moveDown = keyboard_check(vk_down);
}
if (global.playerControl == false) {
	moveRight = 0;
	moveUp = 0;
	moveLeft = 0;
	moveDown = 0;
}

// Run with Shift key
running = keyboard_check(vk_shift);

// Speed up if running
if (running == true) {
	// Ramp up
	if (runSpeed < runMax) {
		runSpeed += 2;
	}
}
if (running == false) {
	// Ramp down
	if (runSpeed > 0) {
		runSpeed -= 1;
	}
}

// Calculate movement
vx = ((moveRight - moveLeft) * (walkSpeed+runSpeed));
vy = ((moveDown - moveUp) * (walkSpeed+runSpeed));

// If no input or a cutscene is playing
if ((vx == 0 && vy == 0) && global.cutSceneRunning = false) {
	myState = playerState.idle;
}

// If moving
if (vx != 0 || vy != 0) {
	if (!collision_point(x+vx,y,obj_par_environment,true,true) && !collision_point(x+vx,y,obj_par_npc,true,true) && !collision_point(x+vx,y,obj_par_interactive,true,true)) {
	x += vx;
	}
	if (!collision_point(x,y+vy,obj_par_environment,true,true) && !collision_point(x,y+vy,obj_par_npc,true,true) && !collision_point(x,y+vy,obj_par_interactive,true,true)) {
	y += vy;
	}
	
	// Change direction based on movement
	if (vx > 0 ) {
		dir = 0;
	}
	if (vx < 0) {
		dir = 2;
	}
	if (vy > 0) {
		dir = 3;
	}
	if (vy < 0) {
		dir = 1;
	}
	
	myState = playerState.walking;
	
}

// Check for nearby NPC
nearbyNPC = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_npc,false,true);
nearbyInteractable = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_interactive,false,true);
// Auto choose sprite based on state and direction
sprite_index = playerSpr[myState][dir];

// Depth Sorting
depth = -y;

// Check for doors
nearbyDoor = collision_rectangle(x-lookRange,y-lookRange,x+lookRange,y+lookRange,obj_par_door,false,true);