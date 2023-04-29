function scr_player_backbreaker()
{
	mach2 = 0
	hsp = 0
	movespeed = 0
	landAnim = 0
	if (sprite_index == spr_taunt)
	{
	    taunttimer--
	    vsp = 0
	}
	if (taunttimer == 0 && sprite_index == spr_taunt)
	{
	    movespeed = tauntstoredmovespeed
	    sprite_index = tauntstoredsprite
	    state = tauntstoredstate
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_eatspaghetti)
	    state = 0
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && (!(place_meeting(x, y, obj_exitgate))))
	{
	    global.panic = 1
	    sprite_index = spr_bossintro
	    image_index = 0
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_Timesup && place_meeting(x, y, obj_exitgate))
	    state = 0
	if (floor(image_index) == (image_number - 1) && (sprite_index == spr_player_levelcomplete || sprite_index == spr_playerN_victory))
	    state = 0
	if (key_jump && sprite_index == spr_player_phoneidle)
	{
	    global.panic = 1
	    sprite_index = spr_bossintro
	    image_index = 0
	    with (instance_create(x, y, obj_debris))
	    {
	        image_index = 0
	        sprite_index = spr_phonedebris
	    }
	}
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_bossintro)
	    state = 0
	if (sprite_index == spr_bossintro)
	{
	    obj_tv.tvsprite = spr_tvexit
	    obj_tv.alarm[0] = 150
	}
	image_speed = 0.35
}
