// Dtestroy itself when the animation if finished
if (room == target_rm && image_index < 1) {
	instance_destroy();
	global.playerControl = true;
	global.pauseControl = true;
}