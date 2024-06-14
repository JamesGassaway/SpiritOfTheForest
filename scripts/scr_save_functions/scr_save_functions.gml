// Room saving
function save_room(){
	
	//var _spagNum = instance_number(obj_item_overworld);
	
	var _itemNum = instance_number(obj_item);
	var _npcNum = instance_number(obj_par_npc);
	
	
	var _roomStruct = 
	{
		/*
		spagNum : _spagNum,
		spagData : array_create(_spagNum),
		*/
		itemNum : _itemNum,
		itemData : array_create(_itemNum),
	}
	
	//Get the data from the different savable objects
		
		//Items
		for (var i = 0; i < _itemNum; i++) {
			var _inst = instance_find(obj_item, i);
			
			_roomStruct.itemData[i] = {
				x : _inst.x,
				y : _inst.y,
				item : _inst.item,
			}
		}
		
	//Stroe the room specific stuct in golal.leveData's variable meant for that level
	if room == rm_overworld {global.levelData.overworld = _roomStruct;};
	if room == rm_house {global.levelData.house = _roomStruct;};
	if room == rm_extraArea {global.levelData.extraArea = _roomStruct;};
}

function load_room() {
	
	var _roomStruct = 0;
	
	//get the correct struct for the room you're in
	if room == rm_overworld {_roomStruct = global.levelData.overworld;};
	if room == rm_house {_roomStruct = global.levelData.house;};
	if room == rm_extraArea {_roomStruct = global.levelData.extraArea;};
	
	//EXIT if _roomStruct isn't a struct
	if !is_struct(_roomStruct) {exit;};
	
	/*
	//SPAG - get rid of the default room editor spag
	//then create new coins with all of the data we've previously saved
	if instance_exists(obj_item) { instance_destroy(obj_item); };
	for (var i = 0; i < _roomStruct.spagNum; i++) {
		instance_create_layer(_roomStruct.spagData[i].x, _roomStruct.spagData[i].y, layer, obj_item);
	}
	*/
	
	//ITEMS - get rid of the default room editor
	//then create new items with all of the data we've previously saved
	if instance_exists(obj_item) { instance_destroy(obj_item); };
	for (var i = 0; i < _roomStruct.itemNum; i++) {
		with( instance_create_layer(_roomStruct.itemData[i].x, _roomStruct.itemData[i].y, layer, obj_item))
		{
			item = _roomStruct.itemData[i].item;
		}
	}
	global.playerControl = true;
}

function save_game(_fileNum = 0) {

		var _saveArray = array_create(0);
		
		//save the room you're in
		save_room();
		
		//Set and save stat related stuff
		global.statData.save_x = obj_player.x;
		global.statData.save_y = obj_player.y;
		global.statData.save_rm = room_get_name(room);
		
		global.statData.spaghetti = global.spaghetti;
		global.statData.item_inv = global.inv;
		
		global.statData.npcData = global.npcData;
		
		array_push(_saveArray, global.statData);
		
		//save all the room data
		array_push(_saveArray, global.levelData);
		
		//Actual saving
		var _filename = "savedata" + string(_fileNum) + ".sav";
		var _json = json_stringify(_saveArray);
		var _buffer = buffer_create(string_byte_length(_json) + 1, buffer_fixed, 1 );
		buffer_write(_buffer, buffer_string, _json);
		
		buffer_save(_buffer, _filename);
		buffer_delete(_buffer);
		
		
}
	
function load_game(_fileNum) {
	
	//loading our saved data
		var _filename = "savedata" + string(_fileNum) + ".sav";
		if !file_exists(_filename) exit;
	
		//Load the buffer, get the JSON, delete the buffer to free memory
		var _buffer = buffer_load(_filename);
		var _json = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		//"unstringify" and get the data array
		var _loadArray = json_parse(_json);
	
	//Set the data in our game to match our loaded data
		global.statData = array_get(_loadArray, 0);
		global.levelData = array_get(_loadArray, 1);
	
		global.spaghetti = global.statData.spaghetti;
		
		global.inv = global.statData.item_inv;
		
		
		
		global.npcData = global.statData.npcData;
	
	//Use our new data to get back to where we were in the game
		// Go to correct room
		var _loadRoom = asset_get_index(global.statData.save_rm);
		room_goto(_loadRoom);
			//make sure our obj_saveload doesn't save the room we're exiting from
			obj_saveload.skipRoomSave = true;
		
		//create the player object
		if instance_exists(obj_player) {instance_destroy(obj_player);};
		instance_create_layer(global.statData.save_x, global.statData.save_y, layer, obj_player);
		
		//manually load the room
		load_room();
}