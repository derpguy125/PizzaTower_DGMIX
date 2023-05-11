if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    scr_sound(sound_destroyblock1, sound_destroyblock2)
    global.breaksound = sound_pizzagot
    ds_list_add(global.saveroom, id)
}

	
	var tiles = layer_tilemap_get_id("Tiles_1")
	
    tilemap_set_at_pixel(tiles,0,x,y)
	