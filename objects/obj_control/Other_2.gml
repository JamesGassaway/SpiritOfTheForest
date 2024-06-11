/// @description Insert description here
// You can write your code in this editor

// Game variables
global.playerControl = true;
global.cutSceneRunning = false;
global.textBoxCooldown = 0;
global.menuCooldown = 0;
cutsceneState00 = false;

// Set global variables to warp the player when room transitioning
if (!(variable_global_exists("playerX"))) {
	global.playerX = 0;
}
if (!(variable_global_exists("playerY"))) {
	global.playerY = 0;
}
if (!(variable_global_exists("room"))) {
	global.room = rm_overworld;
}

// Player States
enum playerState {
	idle,
	walking,
	pickingUp,
	carrying,
	carryIdle,
	puttingDown,
}

// Door states
enum doorState {
	closed,
	open,
	opening,
}
// Sequence states
enum seqState {
	notPlaying,
	waiting,
	playing,
	finished,
	full,
}

// NPC States
enum npcState {
	idle,
	talking,
}	

// Cutscene states
enum cutsceneState {
	playing,
	waiting,
	notplaying,
}
// Sequence variables
sequenceState = seqState.notPlaying;
curSeqLayer = noone;
curSeq = noone;

/// Create the inventory
global.inv = array_create(0);