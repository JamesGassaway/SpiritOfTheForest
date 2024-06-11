// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_items(_text_id){
	switch(_text_id) {
	case "spaghetti":
			scr_text("You ate the spaghetti.");
			scr_text("It's cold and dry from being left out in the open for too long.");
			scr_text("That's pretty gross. But you ate it anyways, sicko.");
			scr_end_textbox();
			break;
			
		case "batteries + flashlight":
			scr_text("You put the batteries in the flashlight.");
			scr_end_textbox();
			break;
		
		case "blue book":
			scr_text("You read the blue book. It says, this program is working pretty well!");
			scr_end_textbox();
			break;
		
		case "unusable":
			scr_text("You can't use this item here.");
			scr_end_textbox();
			break;
	}
}