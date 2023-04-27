function scr_enemy_grabbed()
{
	image_xscale = (-obj_player.xscale)
	stunned = 200
	obj_player.baddiegrabbedID = id
	if (obj_player.state == 21 || obj_player.state == 39 || obj_player.state == 34 || obj_player.state == 35 || obj_player.state == 88)
	{
	    x = (obj_player.x + (obj_player.xscale * 15))
	    y = obj_player.y
	    image_xscale = (-obj_player.xscale)
	}
	with (obj_player)
	{
	    suplexhavetomash = (other.hp - 1)
	    scr_getinput()
	    move = (key_left2 + key_right2)
	    if (key_slap2 && sprite_index == spr_grab)
	    {
	        scr_sound(sound_suplex1)
	        global.hit += 1
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	        image_index = 0
	        sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)
	        other.hp -= 1
	        instance_create(other.x, other.y, obj_slapstar)
	        instance_create(other.x, other.y, obj_baddiegibs)
	        other.flash = 1
	        with (obj_camera)
	        {
	            shake_mag = 3
	            shake_mag_acc = (3 / room_speed)
	        }
	    }
	    if (!((state == 39 || state == 21 || state == 34 || state == 35 || state == 88 || state == 40 || state == 36 || state == 41 || state == 42 || state == 43)))
	    {
	        other.x = x
	        other.y = y
	        other.state = 98
	        other.image_index = 0
	    }
	}
	hsp = 0
	if (obj_player.state == 40 && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 98
	    hsp = ((-image_xscale) * 25)
	    grav = 0
	    vsp = -2
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 41 && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 98
	    image_xscale *= -1
	    hsp = ((-image_xscale) * 20)
	    vsp = -7
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 43 && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create(x, (y + 20), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 98
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 34 && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 98
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	}
	if (obj_player.state == 42 && floor(obj_player.image_index) == 2)
	{
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 1
	    instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    hsp = ((-image_xscale) * 2)
	    state = 98
	    vsp = -20
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 88)
	{
	    x = (obj_player.x + (obj_player.xscale * 15))
	    y = obj_player.y
	}
	if (obj_player.state == 65)
	{
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	    global.hit += 1
	    if (other.object_index == obj_pizzaball)
	        global.golfhit += 1
	    hp -= 2
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 98
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 36)
	{
	    if (obj_player.character == "P")
	    {
	        if (floor(obj_player.image_index) == 0)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * 10))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 1)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * 5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 2)
	        {
	            depth = 0
	            x = obj_player.x
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 3)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * -5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 4)
	        {
	            depth = 0
	            x = (obj_player.x + (obj_player.xscale * -10))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 5)
	        {
	            depth = -8
	            x = (obj_player.x + (obj_player.xscale * -5))
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 6)
	        {
	            depth = -8
	            x = obj_player.x
	            y = obj_player.y
	        }
	        if (floor(obj_player.image_index) == 7)
	        {
	            depth = -8
	            x = (obj_player.x + (obj_player.xscale * 5))
	            y = obj_player.y
	        }
	    }
	    else
	    {
	        depth = -7
	        x = obj_player.x
	        y = (obj_player.y - 40)
	    }
	    if (obj_player.sprite_index == obj_player.spr_piledriverland)
	    {
	        scr_sound(sound_explosion)
	        instance_create(x, y, obj_slapstar)
	        instance_create(x, y, obj_baddiegibs)
	        flash = 1
	        global.combotime += 60
			global.combotime = clamp(global.combotime,0,60 * 4);
	        global.hit += 1
	        if (other.object_index == obj_pizzaball)
	            global.golfhit += 1
	        hp -= 2
	        alarm[1] = 5
	        thrown = 1
	        x = obj_player.x
	        y = obj_player.y
	        state = 98
	        hsp = ((-image_xscale) * 10)
	        vsp = -10
	    }
	}
	sprite_index = grabbedspr
	image_speed = 0.35
}
