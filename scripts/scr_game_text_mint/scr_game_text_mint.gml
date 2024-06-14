// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_mint(_text_id){
	switch _text_id {
		case "mint":
		if (item_in_inventory("Watering Can") && global.npcData.mint_requestCompleted == false) {
			scr_game_text_mint("mint - watering can")
		}
		if (global.npcData.mint_requestCompleted == true) {
			scr_game_text_mint("mint - post watering can");
		}
		else {
			scr_game_text_mint("mint - no request");
		}
			scr_end_textbox();
			break;
		case "mint - no request":
			scr_text("I can't talk now. I'm a bit busy here.");
			scr_end_textbox();
			break;
		case "mint - watering can":
			scr_text("What is it? I'm trying to take care of my garden here.");
			scr_text("... You have something that could help?");
			scr_text("A watering can? Ooh... that could save me some trips to the river.");
			scr_text("You're selling it? ... Ok. I'll buy it.");
			scr_text("Here's some gold for it.");
			item_remove("Watering Can");
			item_add(global.item_list.gold);
			global.npcData.mint_requestCompleted = true;
			scr_text("(Gold added to your inventory.)");
			scr_end_textbox();
		case "mint - post watering can":
			scr_text("Thanks for the watering can.");
			scr_end_textbox();
			
	}
}