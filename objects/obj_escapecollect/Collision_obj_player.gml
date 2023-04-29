    scr_sound(sound_points)
global.collectsound = sound_pizzagot
global.collect += 10
global.pizzameter += 1

global.combotime += 50
global.combotime = clamp(global.combotime,0,60 * 4)

if global.panic {
	global.fill += seconds_to_fill(0.5)	
}

instance_create(x, y, obj_10)
instance_destroy()
