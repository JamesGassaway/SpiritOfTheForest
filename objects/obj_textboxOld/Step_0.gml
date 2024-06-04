/// @description Insert description here
// You can write your code in this editor

/* Textbox control*/
// When textbox has been active for 100 frames
if (coolDown >= 100) {
	// Create carrot
	if (!(instance_exists(obj_carrot))) {
		instance_create_depth(_camX+240,_camY+120,-11000,obj_carrot);
	}
	//show_debug_message(array_length(textToShow));
	// Check for palyer input
	if (keyboard_check(vk_space)) {
		// If there are more textboxes to display
		if (phase < array_length(textToShow)-1) {
			draw_text_ext_color(x,y,textToShow,lineHeight,textWidth,c_black,c_black,c_black,c_black,1);
			coolDown = 0;
			phase++;
		}
		// If all the textboxes have displayed
		else {
			if (npc != noone){
				//Reset the NPC
				npc.myState = npcState.idle;
				npc.dir = 1;
			}
			// Set textbox to be destroyed
			alarm[0] = 2;
			
		}
		if (instance_exists(obj_carrot)) {
			// Destroy carrot
			with (obj_carrot) {
				alarm[0] = 2;
			}
		}
	}
}
// Increase counter until 100 frames
else {
	//show_debug_message(coolDown);
	coolDown++;
}