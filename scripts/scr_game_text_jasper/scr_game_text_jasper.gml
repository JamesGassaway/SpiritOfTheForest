// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_jasper(_text_id){
	switch(_text_id) {
	case "jasper":
		if (item_in_inventory("Flashlight") && global.npcData.jasper_requestTaken == false) {
			scr_game_text_jasper("jasper - request");
		}
		else if (global.npcData.jasper_requestTaken == true && global.npcData.jasper_requestCompleted == false) {
			scr_game_text_jasper("jasper - request pending");	
		}
		else if (global.npcData.jasper_requestCompleted = true) {
			scr_game_text_jasper("jasper - request complete");
		}
		else {
			scr_game_text_jasper("jasper - no request");
		}
		break;
	case "jasper - no request":
			scr_text("Here to buy something? No? Come another time then.");
			scr_end_textbox();
			break;
		case "jasper - request":
			scr_text("Can I help with something?");
			scr_text("...You need batteries? You're in luck! I've got some.");
			scr_text("I'll sell them to you. If you have the gold that is!");
			global.npcData.jasper_requestTaken = true;
			scr_end_textbox();
			break;
		case "jasper - request pending":
			scr_text("Do you have the gold?")
				scr_option("Yep!", "jasper - request fulfilled", "jasper");
				scr_option("Not yet.", "jasper - exit", "jasper");
				break;
			case "jasper - exit":
				scr_text("No gold, no batteries.");
				scr_end_textbox();
				break;
			case "jasper - request fulfilled":
				if (item_in_inventory("Bag of Gold")) {
					scr_text("Alright then. Here's you're batteries!");
					item_remove("Bag of Gold");
					item_add(global.item_list.batteries);
					global.npcData.jasper_requestCompleted = true;
					scr_end_textbox();
				}
				else {
					scr_text("Uh... I don't see the gold.");
					scr_end_textbox();
				}
				break;
		case "jasper - request complete":
			scr_text("Thanks for your business.");
			scr_end_textbox();
			break;
	}

}