if (obj_player.state != 66 && global.sausagefollow == 0)
{
    ds_list_add(global.saveroom, id)
    if (global.toppintotal < 5)
        queue_message(("You need " + string((5 - global.toppintotal))) + " more toppins!")
    if (global.toppintotal == 5)
        queue_message("You have all toppins!")
    obj_tv.alarm[0] = 150
    global.toppintotal += 1
	global.collect += 1000
	global.combotime = 60*4
    scr_sound(sound_toppingot)
    global.sausagefollow = 1
    panic = 0
}
