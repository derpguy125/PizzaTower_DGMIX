if ((state == 51 || state == 56 || state == 63) && other.drop == 0)
{
    state = 68
    image_xscale = -1
    other.hooked = 1
    if (mach2 >= 35)
        other.hspeed = -10
    if (other.hspeed == -10)
        sprite_index = spr_player_hangslide
    if (other.hspeed == 0)
        sprite_index = spr_player_hang
}
