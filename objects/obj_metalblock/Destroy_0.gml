if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    instance_create((x + 32), (y + 32), obj_metaldebris)
    with (obj_camera)
    {
        shake_mag = 20
        shake_mag_acc = (40 / room_speed)
    }
    scr_sound(choose(38, 37))
    ds_list_add(global.saveroom, id)
}

	
	var tiles = layer_tilemap_get_id("Tiles_1")
	
    tilemap_set_at_pixel(tiles,0,x,y)
	tilemap_set_at_pixel(tiles,0,x+32,y)
	tilemap_set_at_pixel(tiles,0,x,y+32)
	tilemap_set_at_pixel(tiles,0,x+32,y+32)
	