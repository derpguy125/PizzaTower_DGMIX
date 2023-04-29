currentlyplaying = 0
currentlyjingling = 0
jingle = 0
global.panic = 0

if !audio_group_is_loaded(music) {
	audio_group_load(music)	
}

if !audio_group_is_loaded(sfx) {
	audio_group_load(sfx)	
}