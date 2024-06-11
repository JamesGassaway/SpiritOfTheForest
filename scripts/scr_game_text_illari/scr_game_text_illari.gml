// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_illari(_text_id){
	
	switch(_text_id) {
		case "illari":
			if (global.npcData.illari_requestCompleted) {
				scr_game_text_illari("illari - request complete");	
			}
			else if (global.npcData.illari_flashlightRecieved) {
				scr_game_text_illari("illari - request pending");	
			}
			else {
				scr_game_text_illari("illari - request batteries");	
			}
			break;
		case "illari - request batteries":
			scr_text("Hey there. I need batteries for my flashlight.");
			scr_text("Can you get me some?");
				scr_option("Sure", "illari - request accepted", "illari");
				scr_option("Nope.", "illari - request denied", "illari");
				break;
			case "illari - request denied":
				scr_text("Aww, man. Guess I'll have to figure something else out.");
				scr_end_textbox();
				break;
			case "illari - request accepted":
				scr_text("Great! Here's the flashlight. Go find me some batteries!");
				scr_text("(Flashlight added to your inventory.)");
				item_add(global.item_list.flashlight);
				global.npcData.illari_flashlightRecieved = true;
				scr_end_textbox();
				break;
		case "illari - request pending":
			scr_text("Do you have the batteries?")
				scr_option("Yep!", "illari - request fulfilled", "illari");
				scr_option("Not yet.", "illari - exit", "illari");
				break;
			case "illari - exit":
				scr_text("Ok. I'm waiting.");
				scr_end_textbox();
				break;
			case "illari - request fulfilled":
				if (item_in_inventory("Flashlight with batteries")) {
					scr_text("Awesome! Thanks for the batteries.");
					item_remove("Flashlight with batteries");
					global.npcData.illari_requestCompleted = true;
					scr_end_textbox();
				}
				else if (item_in_inventory("Batteries")) {
					scr_text("Oh, you've got the batteries. Can you put them in the flashlight for me?");
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
	}
}