function item_add(_item) {
	
	var _added = false;
	
	if (array_length(global.inv) < global.inv_max) {
		array_push( global.inv, _item);
		_added = true;
	}
	
	return _added;
}

function item_in_inventory(_item) {
	hasItem = false;
	for (var i = 0; i < array_length(global.inv); i++) {
		if (global.inv[i].name == _item) {
			hasItem = true;
		}
	}
	return(hasItem);
}

function item_search(_item) {
	for (var i = 0; i < array_length(global.inv); i++) {
		if (global.inv[i].name == _item) {
			return(i);
		}
	}
}

function item_remove(_item) {
	_item_to_delete = item_search(_item);
	array_delete(global.inv, _item_to_delete, 1);
}