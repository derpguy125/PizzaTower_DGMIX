global.collect += 100
global.pizza += 1
instance_create(x, y, obj_100)
if (!audio_is_playing(sound_pizzagot))
    scr_sound(sound_pizzagot)

global.combotime = 60 * 4

instance_destroy()
