with (obj_player)
{
	if instance_exists(obj_lappingtarget) {
		treasure_x = obj_lappingtarget.x + 16
		treasure_y = obj_lappingtarget.y
	} else {
		treasure_x = 480
		treasure_y = 270
	}
    treasure_room = room
    if grounded
    {
        ds_list_add(global.saveroom, other.id)
        global.treasure = 1
        hsp = 0
        vsp = 0
        if (other.sprite_index == other.spridle)
        {
            audio_stop_all()
            obj_music.jingle = 1
            scr_sound(sound_treasuregot)
            other.alarm[0] = 300
			global.combotime = 60 * 4
        }
        if (other.sprite_index == other.spridle)
            state = 16
        other.sprite_index = other.sprgot
        other.x = obj_player.x
        other.y = (obj_player.y - 35)
        obj_tv.alarm[0] = 150
        obj_music.jingle = 1
        ini_close()
    }
}
