/// @description Insert description here
// You can write your code in this editor

/*
// Control Sequences
show_debug_message(sequenceState);
switch sequenceState {
	case seqState.playing: {
		global.playerControl = false;
	}; break;
	case seqState.full: {
		
	}; break;
	case seqState.finished: {
	// Remove Sequence
		if (layer_sequence_exists(curSeqLayer,curSeq)) {
			layer_sequence_destroy(curSeq);
		}
	// Restore control to player, reset
	global.playerControl = true;
	sequenceState = seqState.notPlaying;
	curSeq = noone;
	}; break;
}
*/
//Countdown the textbox cooldown do it doesn't go too quickly
if (global.textBoxCooldown > 0) {
	global.textBoxCooldown--;
}

//Countdown the menu so it doesn't go too quickly
if (global.menuCooldown > 0) {
	global.menuCooldown--;
}