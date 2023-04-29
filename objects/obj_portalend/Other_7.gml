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
		targetDoor = "LAP"
        ds_list_clear(global.baddieroom)
		ds_list_clear(global.escapecollect)
		global.lapping = 1
		global.combotime = 60 * 4
		global.laps += 1
		global.fill += floor(max(0,(global.startfill - (floor(global.startfill / 10) * (-global.laps + 20)))))
		queue_message("Get ready to start lap " + string(global.laps + 1) + "!!")
    }
}
