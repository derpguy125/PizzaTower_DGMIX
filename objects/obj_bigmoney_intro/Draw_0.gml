/// @description Insert description here
// You can write your code in this editor

pal_swap_set(spr_peppalette, global.paletteselect, 0)
draw_sprite(spr_bigmoney_mrmoneysprite,0,0,yy)
shader_reset()

draw_set_color(c_white)
draw_set_font(global.font)
draw_set_halign(fa_center)
draw_text(480,500,"PRESS ENTER TO BEGIN")