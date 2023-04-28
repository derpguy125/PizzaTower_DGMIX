tilesvisible = !tilesvisible

with obj_solid {
	if sprite_index = spr_wall
		visible = other.tilesvisible
	else visible = true
}
with obj_slope
	visible = other.tilesvisible
with obj_platform
	visible = other.tilesvisible