ini_open("saveData.ini")
global.t1_rank = ini_read_string("Ranks", "t1", "none")
global.t2_rank = ini_read_string("Ranks", "t2", "none")
ini_close()
scr_getinput()
if (drop == 1)
    scr_collide()
if (x > 960 && (!instance_exists(obj_fadeout)))
{
	if irandom($FF) == 0 then {
		global.undertale = true	
	}
    with (instance_create(x, y, obj_fadeout)) {
        obj_player.targetRoom = CliffCutscene
        obj_player.targetDoor = "A"
	}
}
switch obj_player.character {
	case "P":
		spr_scooter = spr_pepcooter;
		spr_tumble = spr_player_machfreefall;
		spr_palette = spr_peppalette;
		break;
	case "N":
		spr_scooter = spr_playerN_mach1;
		spr_tumble = spr_playerN_machfreefall;
		spr_palette = spr_noisepalette;
		break;
}

if sprite_index != spr_scooter and sprite_index != spr_tumble {
	sprite_index = spr_scooter
}

if (key_right2 && sprite_index == spr_scooter)
{
    if (global.paletteselect < sprite_get_width(spr_palette) - 1)
    {
        global.paletteselect += 1
        scr_sound(sound_points)
    }
}
if ((-key_left2) && sprite_index == spr_scooter)
{
    if (global.paletteselect > 0)
    {
        global.paletteselect -= 1
        scr_sound(sound_points)
    }
}
if (sprite_index == spr_scooter && (!instance_exists(obj_superdashcloud)))
    instance_create((x - 100), y, obj_superdashcloud)
