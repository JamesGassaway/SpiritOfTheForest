depth = -9999;

global.font = font_8bit;

//item constructor
function create_item(_name, _desc, _spr, _effect) constructor {
	name = _name;
	description = _desc;
	sprite = _spr;
	effect = _effect;
}

//create the items
global.item_list = {
	
	book : new create_item (
		"Book",
		"A book you found in the house",
		spr_book,
		
		function() {
			global.menuCooldown = 30;
			create_textbox("blue book");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
	
	spaghetti : new create_item	(
		"Spaghetti",
		"Eat spaghetti",
		spr_spaghetti,
		function() {
			global.menuCooldown = 30;
			obj_player.hp += 10;
			create_textbox("spaghetti");
			// get rid of item
			array_delete(inv, selected_item, 1);
		}
	),
		
	flashlight : new create_item (
		"Flashlight",
		"A flashligh. Needs batteries.",
		spr_bookFlashlight,
		
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
	
	flashlight_with_batteries : new create_item (
		"Flashlight with batteries",
		"A flashlight. You put batteries inside.",
		spr_bookFlashlight,
		
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
	
	wateringCan : new create_item (
		"Watering Can",
		"A watering can. Jasper asked you to sell it.",
		spr_bookWateringCan,
		
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
		
	gold : new create_item (
		"Bag of Gold",
		"Gold. Give it to Jasper.",
		spr_bookGold,
		
		function() {
			global.menuCooldown = 30;
			create_textbox("unusable");
			//instance_create_depth(obj_player.x, obj_player.y, 0, obj_blueBook);
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
		
	batteries : new create_item (
		"Batteries",
		"Batteries. Illari was looking for some.",
		spr_bookBatteries,
		
		function() {
			global.menuCooldown = 30;

			if (item_in_inventory("Flashlight")) {
				create_textbox("batteries + flashlight");
				item_remove("Batteries");
				item_remove("Flashlight");
				item_add(global.item_list.flashlight_with_batteries);
			}
			else {
				create_textbox("unusable");
			}
			
			//get rid of the item
			//array_delete(inv, selected_item, 1);

		}
		
	),
}


/// Create the inventory
inv = array_create(0);


inv_max = 5;
selected_item = -1;
sep = 32;
screen_bord = 16;

//	array_push(inv, global.item_list.book);
//	array_push(inv, global.item_list.spaghetti);