if (other.image_index == 0 && state == 0 && grounded)
{
    scr_sound(sound_slapswipe1)
    momentum = 0
    movespeed = 0
    other.image_index = 1
    image_index = 0
    sprite_index = spr_knightpep_start
    state = 17
    hsp = 0
}
