/// @description Insert description here
// You can write your code in this editor

subimg += 0.25

scr_getinput()
get_player_info_2()

if key_jump then {
	scr_sound(sound_pizzagot)
	with obj_player {
		if other.selectedChar == 1 then {
			character = "N"
			scr_characterspr()
		} else {
			character = "P"
			scr_characterspr()
		}
	}
	
	ini_open("saveData.ini")
	ini_write_real("Option","Palette",global.paletteselect)
	ini_write_string("Option","Character",obj_player.character)
	ini_close()
	obj_titlescreenthing.selected = 0
	obj_titlescreenthing.buffer = 5
	instance_destroy()
}

if (!instance_exists(obj_keyconfig))
{
    if ((key_up2) && selectedChar > 0)
    {
        selectedChar -= 1
        scr_sound(sound_step)
    }
    if (key_down2 && selectedChar < 1)
    {
        selectedChar += 1
		if selectedChar > 0 and global.paletteselect == 0 then global.paletteselect = 1
        scr_sound(sound_step)
    }
	
	if ((-key_left2) && global.paletteselect > sign(selectedChar)) {
		global.paletteselect --
		scr_sound(sound_step)
	}
	
	if (key_right2 && global.paletteselect < 9) {
		global.paletteselect ++
		scr_sound(sound_step)
	}
}

scr_getinput()