/// @description Insert description here
// You can write your code in this editor

draw_rectangle_color(0, 0, 960, 540, c_maroon, c_maroon, c_orange, c_orange, 0)

draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)

pal_swap_set(palette,global.paletteselect,0)
draw_sprite(sprite,subimg,480,270)
shader_reset()

draw_text(480,200,charName)

draw_text(480,350,palName)

draw_set_font(global.font2)
draw_text(480,400,palDesc)

draw_text(480,32,string_hash_to_newline("THIS IS THE CHARACTER SELECTOR###PRESS JUMP TO SAVE"))
draw_text(420,250,string_hash_to_newline("^##v"))