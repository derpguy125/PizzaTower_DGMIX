if (sprite_index == spr_pizzaportalend)
{
    with (obj_player)
    {
        visible = true
        sprite_index = spr_pizzaportalentrancestart
        image_index = 0
        room = treasure_room
        player_x = treasure_x
        player_y = treasure_y
        ds_list_clear(global.baddieroom)
		ds_list_clear(global.escapecollect)
		global.lapping = 1
		global.combotime = 60 * 4
		global.laps += 1
		global.fill += min(0,(global.startfill / global.laps))
    }
}
