depth = -9999;

global.font = font_8bit;

//item constructor
function create_item(_name, _desc, _spr, _can_drop, _effect) constructor {
	name = _name;
	description = _desc;
	sprite = _spr;
	can_drop = _can_drop;
	effect = _effect;
}

//create the items
global.item_list = {
	
	book : new create_item (
		"Book",
		"A book you found in the house",
		spr_book,
		false,
		"blue_book"
		/*
		function() {
			global.menuCooldown = 30;
			create_textbox("blue book","inv");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			

		}
		*/
		
	),
	
	spaghetti : new create_item	(
		"Spaghetti",
		"Eat spaghetti",
		spr_spaghetti,
		true,
		"spag"
		/*
		function() {
			global.menuCooldown = 30;
			obj_player.hp += 10;
			create_textbox("spaghetti","inv");
			// get rid of item
			array_delete(global.inv, selected_item, 1);
		}
		*/
	),
		
	flashlight : new create_item (
		"Flashlight",
		"A flashligh. Needs batteries.",
		spr_bookFlashlight,
		false,
		"flashlight"
		/*
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable","inv");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			

		}
		*/
		
	),
	
	flashlight_with_batteries : new create_item (
		"Flashlight with batteries",
		"A flashlight. You put batteries inside.",
		spr_bookFlashlight,
		false,
		"flashlight_with_batteries"
		/*
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable","inv");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);

		}
		*/
		
	),
	
	wateringCan : new create_item (
		"Watering Can",
		"A watering can. Jasper asked you to sell it.",
		spr_bookWateringCan,
		false,
		"wattering_can"
		
		/*
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable","inv");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			

		}
		*/
		
	),
		
	gold : new create_item (
		"Bag of Gold",
		"Gold. Give it to Jasper.",
		spr_bookGold,
		false,
		"gold"
		
		/*
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable","inv");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);

		}
		*/
	),
		
	batteries : new create_item (
		"Batteries",
		"Batteries. Illari was looking for some.",
		spr_bookBatteries,
		false,
		"batteries"
		
		/*
		function() {
			global.menuCooldown = 30;

			if (item_in_inventory("Flashlight")) {
				create_textbox("batteries + flashlight","inv");
				item_remove("Batteries");
				item_remove("Flashlight");
				item_add(global.item_list.flashlight_with_batteries);
			}
			else {
				create_textbox("unusable","inv");
			}
			

		}
		*/
	),
}

global.inv_max = 5;
selected_item = -1;
sep = 32;
screen_bord = 16;