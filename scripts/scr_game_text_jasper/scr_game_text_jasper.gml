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
			else if (global.npcData.jasper_requestCompleted == true) {
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
			scr_text("If you can sell this watering can, I can give you the betteries.");
				scr_option("Sure", "jasper - request accepted", "jasper");
				scr_option("Nope.", "jasper - request denied", "jasper");
			break;
			case "jasper - request accepted":
				scr_text("Great! Find someone who'll buy this.");
					item_add(global.item_list.wateringCan);
					global.npcData.jasper_requestTaken = true;
				scr_end_textbox();
				break;
			case "jasper - request denied":
				scr_text("Fine. I'll find someone else to do it.");
				scr_end_textbox();
				break;
				
		case "jasper - request pending":
			scr_text("Did you sell it?")
				scr_option("Yep!", "jasper - request fulfilled", "jasper");
				scr_option("Not yet.", "jasper - exit", "jasper");
				break;
			case "jasper - exit":
				scr_text("Well, I'm waiting.");
				scr_end_textbox();
				break;
			case "jasper - request fulfilled":
				if (item_in_inventory("Bag of Gold")) {
					scr_text("Alright then. Here's your batteries!");
					item_remove("Bag of Gold");
					item_add(global.item_list.batteries);
					global.npcData.jasper_requestCompleted = true;
					scr_text("(Batteries added to your inventory.)");
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