/// @description Insert description here
// You can write your code in this editor

// Depth sorting
depth = -y;

// Determine what to do depending on the door state
switch myState {
	case doorState.closed: {
		image_index = 0;
		image_speed = 0;
	}; break;
	case doorState.open: {
		//
	}
	case doorState.opening: {
		// When the door statrs to open
		if (image_index == 0) {
			image_speed = 1;
		}
		// When the door is finished opening.
		if (image_index >= image_number-1) {
			myState = doorState.open;
			image_speed = 0;
			if (!instance_exists(obj_warp)) {
				var inst = instance_create_depth(0, 0, -9999, obj_warp);
				inst.target_x = target_x;
				inst.target_y = target_y;
				inst.target_rm = target_rm;
				inst.target_face = target_face;
				global.playerControl = false;
				global.pauseControl = false;
			}
			/*
			global.playerX = newSpawnX;
			global.playerY = newSpawnY;
			global.room = roomPortal;
			scr_roomTransition();
			*/
		}
	}; break;
}