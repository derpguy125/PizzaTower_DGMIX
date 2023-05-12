if (jingle == 0) {
	if (room == Intro)
		currentlyplaying = mu_bigmoneytitle
	
	if (room == Cooltitlescreen || room == OLDRealtitlescreen) && !audio_is_playing(mu_bigmoneytitle) && currentlyplaying == mu_bigmoneytitle
			currentlyplaying = mu_bigmoneytitleloop
	
    if (global.panic == 0)
    {
        switch room
        {
            case Titlescreen:
			case hub_room1:
                currentlyplaying = mu_hub1
                break
			case CliffCutscene:
				if global.undertale
					currentlyplaying = mu_undertale
				else
					currentlyplaying = mu_johnapproach
				break
			case results_room:
				currentlyplaying = mu_results
				break
			case tutorial_1:
				currentlyplaying = mu_qualitytime
				break
			case floor_1:
				currentlyplaying = mu_onepizza
				break
			case ancient_1:
				currentlyplaying = mu_coldspag2
            
        }

        if (instance_exists(obj_noise_pushbutton) && obj_player.sprite_index != spr_player_idle)
            currentlyplaying = mu_victory
        if instance_exists(obj_noise_pushbutton)
        {
            if (obj_noise.hspeed != 0)
                currentlyplaying = mu_noise
        }
    }
}
if (instance_exists(obj_player) && obj_player.state != 57 && room != rank_room && room != timesuproom && obj_player.state != 16 && obj_player.sprite_index != obj_player.spr_Timesup)
    jingle = 0
if (global.panic == 1 && jingle == 0)
	if !global.lapping {
		if obj_player.character = "N"
			currentlyplaying = mu_escapeN
		else
			currentlyplaying = mu_pizzatime
	} else {
		if global.laps >= 49 then
			currentlyplaying = mu_lapX
		else if global.laps >= 40 and global.laps < 49
			currentlyplaying = mu_lap7
		else if global.laps >= 30 and global.laps < 40
			currentlyplaying = mu_lap6
		else if global.laps >= 20 and global.laps < 30
			currentlyplaying = mu_lap5
		else if global.laps >= 10 and global.laps < 20
			currentlyplaying = mu_lap4
		else if global.laps >= 5 and global.laps < 10
			currentlyplaying = mu_lap3
		else if global.laps >= 2 and global.laps < 5
			currentlyplaying = mu_lap2
		else {
			if obj_player.character = "N"
				currentlyplaying = mu_lap1N
			else
				currentlyplaying = mu_lap1
		}
	}
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
        if (!audio_is_playing(mu_ranks))
            audio_play_sound(mu_ranks, 1, false)
    }
    else if (global.rank == "a")
    {
        if (!audio_is_playing(mu_ranka))
            audio_play_sound(mu_ranka, 1, false)
    }
    else if (global.rank == "b" || global.rank == "c")
    {
        if (!audio_is_playing(mu_rankb))
            audio_play_sound(mu_rankb, 1, false)
    }
    else if (global.rank == "d")
    {
        if (!audio_is_playing(mu_rankd))
            audio_play_sound(mu_rankd, 1, false)
    }
}
if (room == timesuproom)
{
    audio_stop_sound(currentlyplaying)
    jingle = 1
	if !audio_is_playing(mu_timesup)
		audio_play_sound(mu_timesup,1,0)
}
