/// @param {number} instance
function is_npc(_id){
	var parent = object_get_base_parent(_id);
	
	if (parent == undefined) return false;
	if (parent != obj_npc) return false;
	
	return true;
}