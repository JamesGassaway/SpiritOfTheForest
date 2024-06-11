// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_mint(_text_id){
	switch _text_id {
		case "mint":
			scr_text("(Text for Mint in progress.)");
			scr_end_textbox();
			break;
	}
}