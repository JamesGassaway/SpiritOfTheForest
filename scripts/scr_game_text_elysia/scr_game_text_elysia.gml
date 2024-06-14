// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_elysia(_text_id){
	
	switch(_text_id) {
		case "elysia":
			if (global.npcData.elysia_incenseGiven) {
				scr_game_text_elysia("elysia - incense given");	
			}
			else {
				scr_game_text_elysia("elysia - give incense");	
			}
			break;
			
		case "elysia - give incense":
			scr_text("The game's still in progress, so I'll just give you the incense.");
			scr_text("Do you want some?");
				scr_option("Sure", "elysia - request accepted", "elysia");
				scr_option("Nope.", "elysia - request denied", "elysia");
				break;
			case "elysia - request denied":
				scr_text("Suit yourself.");
				scr_end_textbox();
				break;
			case "elysia - request accepted":
				scr_text("Here you go. Stand in front of some cosmo flowers to use it.");
				scr_text("(Incense added to your inventory.)");
				item_add(global.item_list.incense);
				global.npcData.elysia_incenseGiven = true;
				scr_end_textbox();
				break;
		
		case "elysia - incense given":
			scr_text("What? Go mind your own business.");
			scr_end_textbox();
		break;		
	}
}