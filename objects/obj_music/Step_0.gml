if (jingle == 0)
{
    if (room == Realtitlescreen)
        currentlyplaying = music_title
    if (global.panic == 0)
    {
        switch room
        {
            case Titlescreen:
                currentlyplaying = music_hub
                break
			case CliffCutscene:
				if global.undertale
					currentlyplaying = music_undertale
				else
					currentlyplaying = music_scary
				break
			case results_room:
				currentlyplaying = music_results
				break
			case tutorial_1:
				currentlyplaying = music_funiculi
				break
            
        }

        if (instance_exists(obj_noise_pushbutton) && obj_player.sprite_index != spr_player_idle)
            currentlyplaying = music_knight
        if instance_exists(obj_noise_pushbutton)
        {
            if (obj_noise.hspeed != 0)
                currentlyplaying = music_noiseappear
        }
    }
}
if (instance_exists(obj_player) && obj_player.state != 57 && room != rank_room && room != timesuproom && obj_player.state != 16 && obj_player.sprite_index != obj_player.spr_Timesup)
    jingle = 0
if (global.panic == 1 && jingle == 0)
	if !global.lapping {
		if obj_player.character = "N"
			currentlyplaying = music_escapeN
		else
			currentlyplaying = sound_firstescapetheme
	} else currentlyplaying = music_lapping
if (jingle == 0)
{
    if (!audio_is_playing(currentlyplaying))
    {
        audio_stop_all()
        scr_sound(currentlyplaying)
    }
    if audio_is_paused(currentlyplaying)
    {
        audio_pause_all()
        audio_resume_sound(currentlyplaying)
    }
}
if (room == rank_room)
{
    jingle = 1
    audio_stop_sound(currentlyplaying)
    if (global.rank == "s")
    {
        if (!audio_is_playing(music_ranks))
            audio_play_sound(music_ranks, 1, false)
    }
    else if (global.rank == "a")
    {
        if (!audio_is_playing(music_ranka))
            audio_play_sound(music_ranka, 1, false)
    }
    else if (global.rank == "b" || global.rank == "c")
    {
        if (!audio_is_playing(music_rankb))
            audio_play_sound(music_rankb, 1, false)
    }
    else if (global.rank == "d")
    {
        if (!audio_is_playing(music_rankd))
            audio_play_sound(music_rankd, 1, false)
    }
}
if (room == timesuproom)
{
    audio_stop_all()
    jingle = 1
}
