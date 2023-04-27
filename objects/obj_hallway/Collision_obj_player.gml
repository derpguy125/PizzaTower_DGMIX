with (obj_player)
{
    if (!instance_exists(obj_fadeout))
    {
        targetRoom = other.targetRoom
		targetDoor = other.targetDoor
		hallway = true;
		hallwaydirection = sign(other.image_xscale)
        other.visited = 1
        image_index = 0
        if (state == 64)
            state = 0
        instance_create(x, y, obj_fadeout)
    }
}
