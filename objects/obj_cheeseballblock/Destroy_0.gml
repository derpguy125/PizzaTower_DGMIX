if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_cheeseballblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_cheeseballblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_cheeseballblockdebris
    with (instance_create((x + 32), (y + 32), obj_metaldebris))
        sprite_index = spr_cheeseballblockdebris
    scr_sound(choose(38, 37))
    ds_list_add(global.saveroom, id)
}
