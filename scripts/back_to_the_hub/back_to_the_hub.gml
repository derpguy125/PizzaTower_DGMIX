// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function back_to_the_hub(){
	scr_playerreset()
	room_goto(hub_room1)
	with obj_player {
		targetDoor = "LAP"
		visible = true
        sprite_index = spr_pizzaportalentrancestart
        image_index = 0
		image_speed = 0.35
	    obj_player.state = 12
	    obj_player.grav = 0
	}

	with obj_music {
		jingle = false	
	}
	
	global.panic = 0
	global.lapping = 0
	global.laps = 0
	global.maxcombo = 0
	
	with obj_tv {
		promptx = promptxstart;
		message = "";
		showtext = 0;
		ds_queue_clear(msg_store);	
		yi = 600;
	}
}