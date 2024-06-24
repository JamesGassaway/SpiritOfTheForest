// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_text_interactive(_text_id) {
	
	switch(_text_id){

			
		case "sign":
			scr_text("\"Welcome to Fleuricite Village!\"");
			scr_end_textbox();
			break;
		
		case "shop_sign":
			scr_text("\"Jasper's Wares\"");
			scr_end_textbox();
			break;
		
		case "white_cosmos":
			if (item_in_inventory("Incense")) {
				scr_text("Do you want to put some incense on these flowers?");
					scr_option("Yes", "incense - white flowers", "inter");
					scr_option("Forget it", "incense - forget it", "inter");
			}
			else {
				scr_text("There's some white cosmos.");
				scr_end_textbox();
			}
			break;
		
		case "incense - white flowers":
			scr_text("(Incense text in progress.)");
			scr_end_textbox();
			break;
		case "incense - forget it":
			scr_text("Fine. Nevermind then.");
			scr_end_textbox();
			break;
		
		case "jar":
			scr_text("It's empty.");
			scr_end_textbox();
			break;
		
		case "wardrobe":
			scr_text("It's kinda beat up. There's a few robes hung up in here.");
			scr_end_textbox();
			break;
		
		case "dresser":
			if (global.environmentData.dresser_box_taken == false){
			scr_text("There's some books and a woodcarven box inside.");
			scr_text("Take the wooden box?");
				scr_option("Take it", "dresser - take box", "inter");
				scr_option("Leave it", "dresser - leave box", "inter");
			break;
			}
			else {
				scr_text("There's some books inside.");
				scr_end_textbox();
				break;
			}
			case "dresser - take box":
				scr_text("You took the box and added it to your inventory.");
				global.environmentData.dresser_box_taken = true;
				item_add(global.item_list.woodbox);
				scr_end_textbox();
				break;
			case "dresser - leave box":
				scr_text("You left the box alone");
				scr_end_textbox();
				break;
		
		case "door_forbidden":
			scr_text("You shouldn't go in there.");
			scr_end_textbox();
			break;
		
		case "fireplace_lit":
			scr_text("It's a fireplace. It's warm here.");
			scr_end_textbox();
			break;
		
		case "puzzle - success":
			scr_text("Click! The wooden box was opened!");
			scr_text("You found the incense inside! You added it to your inventory.");
			item_remove("Ornate Wooden Box");
			item_add(global.item_list.incense);
			scr_end_textbox();
			break;
		case "puzzle - failure":
			scr_text("Click! ...");
			scr_text("Nothing happened.");
			scr_end_textbox();
			break;		
		
		
		
		case "def":
			scr_text("(Default interactive text.)");
			scr_end_textbox();
			break;
		case "":
			scr_text("(No text_id provided.)");
			scr_end_textbox();
			break;
	}
}