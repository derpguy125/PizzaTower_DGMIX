/// @description something to do with visibility of tiles

if room != OLDRealtitlescreen {
	showtext2 = 1
	alarm[1] = 200
}

with obj_solid {
	if sprite_index = spr_wall
		visible = other.tilesvisible
	else visible = true
}
with obj_slope
	visible = other.tilesvisible
with obj_platform
	visible = other.tilesvisible