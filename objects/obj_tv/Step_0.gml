if (room == rank_room || room = results_room || room == timesuproom || room == Realtitlescreen || room == CliffCutscene)
    visible = false
else
    visible = true

// set rank
set_rank();

// ptv text
if (showtext == 1)
{
    xi = (480 + random_range(1, -1))
    if (yi > 490)
        yi -= 5
	else yi = 490
}
if (showtext == 0)
{
    xi = (480 + random_range(1, -1))
    if (yi < 600)
        yi += 1
	else yi = 600
}



// room name
if (showtext2 == 0)
{
    xi2 = (480 + random_range(1, -1))
    if (yi2 > -100)
        yi2 -= 1
}
if (showtext2 == 1)
{
    xi2 = (480 + random_range(1, -1))
    if (yi2 < 45)
        yi2 += 5
}

// max combo
if global.combo > global.maxcombo then global.maxcombo = global.combo

// sprites
if (!((obj_player.state == 17 && obj_player.state == 18 && obj_player.state == 11)))
    once = 0
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else
    alpha = 1
if (global.collect > global.arank && shownranka == 0)
{
    image_speed = 0
    //message = "You got enough for rank A!"
    //showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
else if (global.collect > global.brank && shownrankb == 0)
{
    image_speed = 0
    //message = "You got enough for rank B!"
    //showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    shownrankb = 1
}
else if (global.collect > global.crank && shownrankc == 0)
{
   image_speed = 0
    //message = "You got enough for rank C!"
    //showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    shownrankc = 1
}
else if (obj_player.sprite_index == spr_player_levelcomplete)
{
    image_speed = 0.1
    alarm[0] = 50
    chose = 1
    tvsprite = spr_tvclap
    once = 1
}
else if (obj_player.state == 66)
{
    image_speed = 0.1
    //showtext = 1
    //if (chose == 0)
    //    message = choose("Ow!", "Ouch!", "Oh!", "Woah!")
    alarm[0] = 50
    chose = 1
    tvsprite = spr_tvhurt
    once = 1
}
else if (obj_player.state == 29)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = spr_tvskull
}
else if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    image_speed = 0.1
    if (obj_player.character == "P")
        character = "Peppino"
    else
        character = "The Noise"
    message = (((("Seems that you've hurt " + string(character)) + " ") + string(global.hurtmilestone)) + " times... " +
				choose("Try not to do that more often!","You uh... you really need to not do that.","You suck!","Get better!","What would Spudmom think?"))
    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
    global.hurtmilestone += 3
}
else if (obj_player.state == 37)
{
    //showtext = 1
    //message = "Sweet, dude!!"
    alarm[0] = 50
    tvsprite = spr_tvrad
    once = 1
}
else if (obj_player.state == 53)
{
    image_speed = 0.1
    //showtext = 1
    //message = "Oops!!"
    alarm[0] = 50
    tvsprite = spr_tvbanana
    once = 1
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo || tvsprite == spr_tvescape))
{
    if (global.combo >= 4)
        imageindexstore = 3
    else
        imageindexstore = (global.combo - 1)
}
else if (global.combotime == 0 && tvsprite == spr_tvcombo)
{
    tvsprite = spr_tvcomboresult
    image_index = imageindexstore
    alarm[0] = 50
}
else if (global.panic == 1)
{
    image_speed = 0.1
    tvsprite = spr_tvescape
}
if (obj_player.state == 49)
{
    //showtext = 1
    //message = "Got the key!"
    alarm[0] = 50
}
if instance_exists(obj_noise_pushbutton)
{
    if (obj_noise_pushbutton.hsp != 0 && global.panic == 0)
    {
        //showtext = 1
        //message = "Uh oh..."
        alarm[0] = 50
    }
}