// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text(_text_id,_source_id){

	
	switch(_source_id) {
		case "illari":
			scr_game_text_illari(_text_id);
			break;
		case "inv":
			scr_game_text_items(_text_id);
			break;
		case "jasper":
			scr_game_text_jasper(_text_id);
			break;
		case "mint":
			scr_game_text_mint(_text_id);
			break;
		case "elysia":
			scr_game_text_elysia(_text_id);
			break;
		case "inter":
			scr_game_text_interactive(_text_id);
			break;
	}

	
	switch(_text_id){
		case "npc 1":
			scr_text("Hi! I'm NPC 1! alsfdhnlksjhnflkjhkljhnlkjasjh askjfhn aoihfoisfd aa usdf sjkjhksdhf kj j j j j j j j j j j j ");
			scr_text("asdfghjkl");
			scr_text("Do you like video games?");
				scr_option("Yeah", "npc 1 - yes", "");
				scr_option("Nah", "npc 1 - no", "");
			break;
			case "npc 1 - yes":
				scr_text("asdfghjkl!");
				scr_text("What kind is best?");
					scr_option("Platforming", "npc 1 - platform", "");
					scr_option("Fighting", "npc 1 - fight", "");
					scr_option("FPS", "npc 1 - fps", "");
				break;
				case "npc 1 - platform":
					scr_text("qwertyuiop!");
					scr_end_textbox();
				break;
				case "npc 1 - fight":
					scr_text("zxcvbnm!");
					scr_end_textbox();
				break;
				case "npc 1 - fps":
					scr_text("asdf.");
					scr_end_textbox();
				break;
			case "npc 1 - no":
				scr_text("... Someone come fix my dialogue.");
				scr_end_textbox();
				break;
			
		case "npc 2":
			scr_text("Hi! I'm Takoda!");
			scr_text("aslkjhglaskjhgkljhsakjg");
			scr_end_textbox();
			break;
		
		case "npc 3":
			scr_text("Hi! I'm Elysia!");
			scr_text("Is everything working correctly?");
				scr_option("Yes!", "npc 3 - working correctly", "");
				scr_option("No.", "npc 3 - not working", "");
				scr_option("Maybe?", "npc 3 - i dunno", "");
			break;
			case "npc 3 - working correctly":
				scr_text("That's great! I'm glad.");
				scr_end_textbox();
			break;
			case "npc 3 - not working":
				scr_text("Dang it!");
				scr_end_textbox();
			break;
			case "npc 3 - i dunno":
				scr_text("Well, you better get on that.");
				scr_end_textbox();
			break;
			
		case "npc 1 - house":
			scr_text("This is pretty cool, right?");
			scr_end_textbox();
			break;
			
		case "npc 2 - house":
			scr_text("This was such a waste of time.");
			scr_end_textbox();
			break;
			
		case "npc 3 - house":
			scr_text("Is everything working in here?");
				scr_option("Yes", "npc 3 - house - yes", "");
				scr_option("No", "npc 3 - house - no", "");
			break;
			case "npc 3 - house - yes":
				scr_text("That's great to hear!");
				scr_end_textbox();
				break;
			case "npc 3 - house - no":
				scr_text("Aww man...");
				scr_end_textbox();
				break;
		case "":
			scr_text("(Blank Text.)");
			scr_end_textbox();
			break;
		case "def":
			scr_text("(Default text provided.)");
			scr_end_textbox();
			break;
/*ITEM TEXT***********************************************************/		
/*
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
			*/
/*NPC-ILLARI**************************************************************/
/*
		case "illari":
			if (obj_npc_jasper.request_completed) {
				scr_game_text("illari - request complete");	
			}
			else if (obj_npc_jasper.flashlight_recieved) {
				scr_game_text("illari - request pending");	
			}
			else {
				scr_game_text("illari - request batteries");	
			}
			break;
		case "illari - request batteries":
			scr_text("Hey there. I need batteries for my flashlight.");
			scr_text("Can you get me some?");
				scr_option("Sure", "illari - request accepted");
				scr_option("Nope.", "illari - request denied");
				break;
			case "illari - request denied":
				scr_text("Aww, man. Guess I'll have to figure something else out.");
				scr_end_textbox();
				break;
			case "illari - request accepted":
				scr_text("Great! Here's the flashlight. Go find me some batteries!");
				scr_text("(Flashlight added to your inventory.)");
				item_add(global.item_list.flashlight);
				obj_npc_jasper.flashlight_recieved = true;
				scr_end_textbox();
				break;
		case "illari - request pending":
			scr_text("Do you have the batteries?")
				scr_option("Yep!", "illari - request fulfilled");
				scr_option("Not yet.", "illari - exit");
				break;
			case "illari - exit":
				scr_text("Ok. I'm waiting.");
				scr_end_textbox();
				break;
			case "illari - request fulfilled":
				has_item = item_in_inventory("Flashlight with batteries");
				if (has_item) {
					scr_text("Awesome! Thanks for the batteries.");
					item_remove("Flashlight with batteries");
					obj_npc_jasper.request_completed = true;
					scr_end_textbox();
				}
				else {
					scr_text("You do? But I don't see them.");
					scr_end_textbox();
				}
				break;
		case "illari - request complete":
			scr_text("Thank you for getting those batteries for me!");
			scr_end_textbox();
			break;
			*/
/*NPC TEXT JASPER***************************************/
		/*
		case "jasper":
			has_item = item_in_inventory("Flashlight");
			if (has_item && obj_npc_takoda.request_taken == false) {
				scr_game_text("jasper - request");
			}
			else if (obj_npc_takoda.request_taken == true && obj_npc_takoda.request_completed == false) {
				scr_game_text("jasper - request pending");	
			}
			else if (obj_npc_takoda.request_completed = true) {
				scr_game_text("jasper - request complete");
			}
			else {
				scr_game_text("jasper - no request");
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
			obj_npc_takoda.request_taken = true;
			scr_end_textbox();
			break;
		case "jasper - request pending":
			scr_text("Do you have the gold?")
				scr_option("Yep!", "jasper - request fulfilled");
				scr_option("Not yet.", "jasper - exit");
				break;
			case "jasper - exit":
				scr_text("No gold, no batteries.");
				scr_end_textbox();
				break;
			case "jasper - request fulfilled":
				has_item = item_in_inventory("Bag of Gold");
				if (has_item) {
					scr_text("Alright then. Here's you're batteries!");
					item_remove("Bag of Gold");
					item_add(global.item_list.batteries);
					obj_npc_takoda.request_completed = true;
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
*/
	}
}