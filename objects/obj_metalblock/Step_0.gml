with (obj_player)
{
    if ((place_meeting((x + hsp), y, other.id) || place_meeting((x + xscale), y, other.id)) && (state == 83 || state == 11))
        instance_destroy(other.id)
}
if (place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player))
{
    if (place_meeting(x, (y - 1), obj_player) && obj_player.state == 33 && obj_player.machfreefall >= 10)
        instance_destroy()
    if (place_meeting(x, (y - 1), obj_player) && (obj_player.state == 17 || obj_player.state == 2))
    {
        instance_destroy()
        tile_layer_delete_at(1, x, y)
    }
	
	if (place_meeting(x, (y + 40), obj_player) && obj_player.state == 56)
        instance_destroy()
}

