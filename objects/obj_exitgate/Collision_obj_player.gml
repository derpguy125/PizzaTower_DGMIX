if (global.panic == 1)
{
    with (obj_player)
    {
        if (grounded && x > (other.x + 32) && x < (other.x + 160) && key_up && (state == 0 || state == 62 || state == 63 || state == 83))
        {
            if (global.collect >= global.srank)
                global.rank = "s"
            else if (global.collect > global.arank)
                global.rank = "a"
            else if (global.collect > global.brank)
                global.rank = "b"
            else if (global.collect > global.crank)
                global.rank = "c"
            else
                global.rank = "d"
            var roomname = room_get_name(room)
			if (string_letters(roomname) = "tutorial") {
				save_level_data("tutorial")
			}
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != 71)
            {
                audio_stop_all()
                state = 71
                obj_endlevelfade.alarm[0] = 235
                image_index = 0
            }
        }
    }
}
