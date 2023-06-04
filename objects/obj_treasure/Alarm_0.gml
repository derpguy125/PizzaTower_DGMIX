obj_player.state = 44
finishcutscene = true;
obj_player.image_index = 0
obj_player.sprite_index = obj_player.spr_Timesup
ds_list_clear(global.baddieroom)
switch room
{
    case tutorial_john:
        global.fill = seconds_to_fill(90)
        break
}

global.wave = 0
global.maxwave = (global.fill)
if global.panicbg
    scr_panicbg_init()
