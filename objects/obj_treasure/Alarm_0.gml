obj_player.state = 44
obj_player.image_index = 0
obj_player.sprite_index = obj_player.spr_Timesup
obj_tv.showtext = 1
ds_list_clear(global.baddieroom)
switch room
{
    case tutorial_john:
        global.minutes = 2
        global.seconds = 30
        break
}

global.wave = 0
global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
if global.panicbg
    scr_panicbg_init()
