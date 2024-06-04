/// @description Insert description here
// You can write your code in this editor

// Cutscene for starting area
switch phase {
	// Move the player into position
	case 0: {
		if (obj_player.x <= 329) { 
			myState = cutsceneState.playing;
			obj_player.dir = 0;
			if (obj_player.myState != playerState.walking) {
				obj_player.myState = playerState.walking;
			}
			obj_player.x += 3;
		}
		else {
			obj_player.myState = playerState.idle;
			phase++;
		}
	}; break;
	// Display text
	case 1: {
		if (!instance_exists(obj_textboxOld) && (myState == cutsceneState.playing)) {
			camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
			camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
			textToShow = ["Samuel!!!     Ruby!!!"];
			iii = instance_create_depth(camX,camY+120,-10000,obj_textboxOld);
			iii.textToShow = textToShow;
			iii.phase = 0;
			iii.npc = noone;
			myState = cutsceneState.waiting;
		}
		if  ((myState == cutsceneState.waiting) && !instance_exists(obj_textboxOld)) {
			myState = cutsceneState.playing;
			phase++;
			i = 0;
		}
	}; break;
	// Animate player character
	case 2: {
		if (i = 0) {
			obj_player.dir = 2;
			i++;
		}
		else if (i < 60) {
			i++;
		}
		else {
			phase++;
			i = 0;
		}
		
	}; break;
	case 3: {
		if (i = 0) {
			obj_player.dir = 0;
			i++;
		}
		else if (i < 60) {
			i++;
		}
		else {
			phase++;
			i = 0;
		}
		
	}; break;
	case 4: {
		if (i = 0) {
			obj_player.dir = 2;
			i++;
		}
		else if (i < 60) {
			i++;
		}
		else {
			phase++;
			i = 0;
		}
		
	}; break;
	// Display text
	case 5: {
		if (!instance_exists(obj_textboxOld) && (myState == cutsceneState.playing)) {
			camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
			camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
			textToShow = ["...Oh no...", "Oh no! W-What do I do? I don't know where I am!", "... I can't find them anywhere... No one's going to come looking for me!"];
			iii = instance_create_depth(camX,camY+120,-10000,obj_textboxOld);
			iii.textToShow = textToShow;
			iii.phase = 0;
			iii.npc = noone;
			myState = cutsceneState.waiting;
		}
		if  ((myState == cutsceneState.waiting) && !instance_exists(obj_textboxOld)) {
			myState = cutsceneState.playing;
			phase++;
			i = 0;
		}
	}; break;
	// Animate Character
	case 6: {
		if (i = 0) {
			obj_player.dir = 3;
			i++;
		}
		else if (i < 60) {
			i++;
		}
		else {
			phase++;
			i = 0;
		}
		
	}; break;
	// Display text
	case 7: {
		if (!instance_exists(obj_textboxOld) && (myState == cutsceneState.playing)) {
			camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
			camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);
			textToShow = ["No. I have to stay strong. I'll find a way.", "I hope."];
			iii = instance_create_depth(camX,camY+120,-10000,obj_textboxOld);
			iii.textToShow = textToShow;
			iii.phase = 0;
			iii.npc = noone;
			myState = cutsceneState.waiting;
		}
		if  ((myState == cutsceneState.waiting) && !instance_exists(obj_textboxOld)) {
			myState = cutsceneState.playing;
			phase++;
			i = 0;
		}
	}; break;
	// Move character out of frame
	case 8: {
		if (obj_player.x <= 768) { 
			obj_player.dir = 0;
			if (obj_player.myState != playerState.walking) {
				obj_player.myState = playerState.walking;
			}
			obj_player.x += 3;
		}
		else {
			obj_player.myState = playerState.idle;
			phase++;
		}
	}; break;
	// End cutscene
	case 9: {
		global.room = rm_overworld;
		room_goto(rm_overworld);
		global.cutSceneRunning = false;
		myState = cutsceneState.notplaying;
		alarm[0] = 2;
	}
}