if (hurted == 0 && state != 20 && state != 34 && other.countdown > 30)
{
    scr_sound(sound_touchspike)
    bombpeptimer = 200
    hsp = 0
    movespeed = 0
    image_index = 0
    state = 20
    sprite_index = spr_bombpep_intro
    instance_create((x + (image_xscale * 40)), y, obj_punchdust)
    instance_destroy(other.id)
}
