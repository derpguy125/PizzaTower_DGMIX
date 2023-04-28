if (other.image_index == 0)
{
    scr_sound(sound_touchspike)
    instance_create(x, y, obj_bangeffect)
    sprite_index = spr_tumble
    drop = 1
    vsp = -20
    hsp = 8
    other.image_index = 1
}
