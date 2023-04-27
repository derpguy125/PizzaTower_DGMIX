if (ds_list_find_index(global.baddieroom, id) == -1)
{
    obj_tv.image_index = random_range(0, 4)
    ds_list_add(global.baddieroom, id)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_slapstar)
    scr_sleep(50)
    with (obj_camera)
    {
        shake_mag = 3
        shake_mag_acc = (3 / room_speed)
    }
    instance_create(x, y, obj_slimedead)
    if (reset == 0)
    {
        instance_create(x, (y + 30), obj_bangeffect)
        if (stomped == 0 && shot == 0)
        {
            with (obj_camera)
            {
                shake_mag = 5
                shake_mag_acc = (20 / room_speed)
            }
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
        }
        if (stomped == 1 && shot == 0)
        {
            instance_create(x, y, obj_slimedead)
            with (obj_camera)
            {
                shake_mag = 5
                shake_mag_acc = (20 / room_speed)
            }
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            hsp = 0
            vsp = 0
        }
        if (shot == 1 && stomped == 0)
        {
            instance_create(x, y, obj_slimedead)
            with (obj_camera)
            {
                shake_mag = 20
                shake_mag_acc = (40 / room_speed)
            }
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            instance_create(x, y, obj_slimedebris)
            hsp *= 3
            vsp *= 3
        }
        
		scr_sound(sound_combo1)
		global.collect += (10 + (5 * global.combo))
	    global.combo += 1
	    global.combotime = 60 * 4
    }
}
