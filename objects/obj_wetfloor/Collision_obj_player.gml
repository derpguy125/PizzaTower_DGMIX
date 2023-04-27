with (obj_player)
{
    if (state == 62 || state == 63 || state == 64 || state == 53)
    {
        state = 53
        if (movespeed < 8)
            movespeed = 8
    }
    if (state == 75 || state == 74)
    {
        image_index = 0
        state = 78
        if (movespeed < 8)
            movespeed = 8
    }
}
