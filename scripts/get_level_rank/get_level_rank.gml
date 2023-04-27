// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_level_rank(levelname){
	ini_open("saveData.ini")
		
	return ini_read_string("Ranks", levelname, "none");
		
	ini_close();
}

function set_rank() {
	var roomname = room_get_name(room);
	var rankDiv4 = 0;
	switch roomname {
		case "tutorial_1":
			global.srank = 27500;
			break;
	}
	
	rankDiv4 = global.srank / 4;
	
	global.arank = floor(rankDiv4 * 3);
	global.brank = floor(rankDiv4 * 2);
	global.crank = floor(rankDiv4);
	
}