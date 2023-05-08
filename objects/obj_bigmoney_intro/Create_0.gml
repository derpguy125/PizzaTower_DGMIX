/// @description Insert description here
// You can write your code in this editor

yy = 540
enabled = false


global.rankpalette = 0
global.panic = 0

global.undertale = false

ini_open("saveData.ini")
global.paletteselect = ini_read_real("Option","Palette",1)
with obj_player {
	character = ini_read_string("Option","Character","P")
	scr_characterspr()
}
global.option_fullscreen = ini_read_real("Option", "fullscreen", 1)
global.option_resolution = ini_read_real("Option", "resolution", 1)
ini_close()
if (global.option_fullscreen == 0)
    window_set_fullscreen(true)
if (global.option_fullscreen == 1)
    window_set_fullscreen(false)
if (global.option_resolution == 0)
    window_set_size(480, 270)
if (global.option_resolution == 1)
    window_set_size(960, 540)
if (global.option_resolution == 2)
    window_set_size(1920, 1080)
	
alarm[0] = 60
	
// controls

scr_initinput()