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
	),
	
	spaghetti : new create_item	(
		"Spaghetti",
		"Eat spaghetti",
		spr_spaghetti,
		true,
		"spag"
	),
		
	flashlight : new create_item (
		"Flashlight",
		"A flashligh. Needs batteries.",
		spr_bookFlashlight,
		false,
		"flashlight"
	),
	
	flashlight_with_batteries : new create_item (
		"Flashlight with batteries",
		"A flashlight. You put batteries inside.",
		spr_bookFlashlight,
		false,
		"flashlight_with_batteries"
	),
	
	wateringCan : new create_item (
		"Watering Can",
		"A watering can. Jasper asked you to sell it.",
		spr_bookWateringCan,
		false,
		"watering_can"
	),
	
	incense : new create_item (
		"Incense",
		"Incense from Elysia. Use it near flowers to communicate with spirits.",
		spr_bookIncense,
		false,
		"incense"
	),
	
	gold : new create_item (
		"Bag of Gold",
		"Gold. Give it to Jasper.",
		spr_bookGold,
		false,
		"gold"
	),
		
	batteries : new create_item (
		"Batteries",
		"Batteries. Illari was looking for some.",
		spr_bookBatteries,
		false,
		"batteries"
	),
	
	woodbox : new create_item (
		"Ornate Wooden Box",
		"Found in Elysia's house. What's inside?",
		spr_bookWoodenBox,
		false,
		"wood_box"
	),
}

global.inv_max = 5;
selected_item = -1;
sep = 32;
screen_bord = 16;