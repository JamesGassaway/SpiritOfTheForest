function scr_item_effects(_item){

		//Item effect by what effect is attached to each item		
		switch _item {
			case "blue_book":
				global.menuCooldown = 30;
				create_textbox("blue book","inv");
				break;
				
			case "spag":
				global.menuCooldown = 30;
				obj_player.hp += 10;
				create_textbox("spaghetti","inv");
				// get rid of item
				item_remove("Spaghetti");
				//array_delete(global.inv, obj_item_manager.selected_item, 1);
				break;
				
			case "flashlight":
				global.menuCooldown = 30;
				create_textbox("unusable","inv");
				break;
			
			case "flashlight_with_batteries":
				global.menuCooldown = 30;
				create_textbox("unusable","inv");
				break;
			
			case "watering_can":
				global.menuCooldown = 30;
				create_textbox("unusable","inv");
				break;

			case "gold":
				global.menuCooldown = 30;
				create_textbox("unusable","inv");
				break;
				
			case "batteries":
				global.menuCooldown = 30;
				
				//See if there is a flashlight in the inventory
				if (item_in_inventory("Flashlight")) {
					create_textbox("batteries + flashlight","inv");
					item_remove("Batteries");
					item_remove("Flashlight");
					item_add(global.item_list.flashlight_with_batteries);
				}
				else {
					create_textbox("unusable","inv");
				}
				break;
		}	
}