/// @description Insert description here
// You can write your code in this editor

pal_swap_set(palette, global.paletteselect, 0)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shader_reset()

if global.undertale
	draw_sprite(spr_undertale,0,480,420);