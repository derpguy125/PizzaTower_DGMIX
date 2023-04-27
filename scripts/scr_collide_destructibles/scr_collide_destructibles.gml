function scr_collide_destructibles()
{
	if (state == 63 || state == 83 || state == 30 || state == 2 || state == 17)
	{
	    if place_meeting((x + hsp), y, obj_destructibles)
	    {
	        with (instance_place((x + hsp), y, obj_destructibles))
	            instance_destroy()
	    }
	}
	if (state == 17 || state == 36 || state == 2)
	{
	    if place_meeting(x, (y + 1), obj_destructibles)
	    {
	        with (instance_place(x, (y + 1), obj_destructibles))
	            instance_destroy()
	    }
	}
	if place_meeting(x, (y + 1), obj_destructibleplatform)
	{
	    with (instance_place(x, (y + 1), obj_destructibleplatform))
	    {
	        falling = 1
	        if (falling == 1)
	            image_speed = 0.35
	    }
	}
	if (state == 51 || state == 56 || state == 63 || state == 83)
	{
	    if place_meeting(x, (y - 1), obj_destructibles)
	    {
	        with (instance_place(x, (y - 1), obj_destructibles))
	            instance_destroy()
	    }
	}
	if (state == 15)
	{
	    with (obj_destructibles)
	    {
	        if place_meeting((x - obj_player.hsp), y, obj_player)
	        {
	            with (obj_player)
	            {
	                hsp = ((-xscale) * 4)
	                vsp = -4
	                mach2 = 0
	                image_index = 0
	                state = 50
	            }
	            instance_destroy()
	        }
	    }
	}
	with (obj_baddie)
	{
	    if (place_meeting((x + 1), y, obj_destructibles) && thrown == 1)
	    {
	        instance_destroy(instance_place((x + 1), y, obj_destructibles))
	        grav = 0.5
	    }
	    if (place_meeting((x - 1), y, obj_destructibles) && thrown == 1)
	    {
	        instance_destroy(instance_place((x - 1), y, obj_destructibles))
	        grav = 0.5
	    }
	}
}
