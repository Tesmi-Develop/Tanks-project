/// @description scr_test_multi_parameter(item0, item1, item2)
/// @param item0
/// @param  item1
/// @param  item2
function scr_test_multi_parameter(argument0, argument1, argument2) {

	// Tests a script with exactly 3 parameters

	var item0 = argument0;
	var item1 = argument1;
	var item2 = argument2;

	var str = string(id) + "'s Shopping list:";

	str += "#";
	str += item0;

	str += "#";
	str += item1;

	str += "#";
	str += item2;

	show_message(str);



}
