if (ds_list_find_index(global.saveroom, id) == -1)
{
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
    global.breaksound = sound_pizzagot
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create((x + 16), y, obj_pizzadebris)
    instance_create(x, y, obj_collect)
    ds_list_add(global.saveroom, id)
}


	
	var tiles = layer_tilemap_get_id("Tiles_1")
	
    tilemap_set_at_pixel(tiles,0,x,y)
	