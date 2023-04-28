/// @description something to do with visibility of tiles

if room != Realtitlescreen {
	showtext2 = 1
	alarm[1] = 200
}

tilesvisible = !tilesvisible

with obj_solid {
	if (object_get_parent(object_index) != obj_destructibles && object_index != obj_reverseminipillar && object_index != obj_minipillar)
		visible = other.tilesvisible
	else visible = true
}
with obj_slope
	visible = other.tilesvisible
with obj_platform
	visible = other.tilesvisible