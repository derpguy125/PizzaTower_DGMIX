/// @description something to do with visibility of tiles

if room != Realtitlescreen {
	showtext2 = 1
	alarm[1] = 200
}

with obj_solid
	visible = other.tilesvisible
with obj_slope
	visible = other.tilesvisible
with obj_platform
	visible = other.tilesvisible