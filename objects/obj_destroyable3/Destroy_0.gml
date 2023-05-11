if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
    ds_list_add(global.saveroom, id)
}

	
	var tiles = layer_tilemap_get_id("Tiles_1")
	
    tilemap_set_at_pixel(tiles,0,x,y)
	tilemap_set_at_pixel(tiles,0,x+32,y)
	tilemap_set_at_pixel(tiles,0,x,y+32)
	tilemap_set_at_pixel(tiles,0,x+32,y+32)
	