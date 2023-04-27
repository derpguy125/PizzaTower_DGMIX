image_speed = 0.35
hsp = 0
vsp = 0
grav = 0.5
drop = 0

ini_open("saveData.ini")
global.paletteselect = ini_read_real("Preferences","Palette",1)
ini_close();
global.rankpalette = 0
global.panic = 0
colorchange = 0

global.undertale = false

	spr_scooter = spr_pepcooter
	spr_tumble = spr_player_machfreefall
	spr_palette = spr_peppalette
	
current_sprite = spr_scooter;