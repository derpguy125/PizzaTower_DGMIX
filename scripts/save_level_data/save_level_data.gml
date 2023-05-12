// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_level_data(levelname){
	ini_open("saveData.ini")
		
	if (global.rank == "s")
        ini_write_string("Ranks", levelname, global.rank)
    if (global.rank == "a" && "s" != ini_read_string("Ranks", levelname, "none"))
        ini_write_string("Ranks", levelname, global.rank)
    if (global.rank == "b" && "s" != ini_read_string("Ranks", levelname, "none") && "a" != ini_read_string("Ranks", levelname, "none"))
        ini_write_string("Ranks", levelname, global.rank)
    if (global.rank == "c" && "s" != ini_read_string("Ranks", levelname, "none") && "a" != ini_read_string("Ranks", levelname, "none") && "b" != ini_read_string("Ranks", levelname, "none"))
        ini_write_string("Ranks", levelname, global.rank)
    if (global.rank == "d" && "s" != ini_read_string("Ranks", levelname, "none") && "a" != ini_read_string("Ranks", levelname, "none") && "b" != ini_read_string("Ranks", levelname, "none") && "c" != ini_read_string("Ranks", levelname, "none"))
        ini_write_string("Ranks", levelname, global.rank)
	
	ini_write_real("Scores", levelname, global.collect)
	ini_write_real("Laps", levelname, global.laps)
	
	ini_close()
}