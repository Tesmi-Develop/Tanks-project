/// @param {number} instance
function is_npc(_id){
	for (var i = 0; i < instance_number(obj_npc); i++) {
		if (instance_find(obj_npc, i) = _id) return true;
	}
	
	return false;
}