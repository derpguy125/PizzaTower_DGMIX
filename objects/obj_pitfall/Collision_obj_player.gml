with (obj_player)
{
    if (!instance_exists(obj_fadeout))
    {
        targetRoom = other.targetRoom
		targetDoor = other.targetDoor
		pit = true
		pitdirection = sign(other.image_yscale)
        other.visited = 1
        image_index = 0
        if (state == 64)
            state = 0
        instance_create(x, y, obj_fadeout)
    }
}
