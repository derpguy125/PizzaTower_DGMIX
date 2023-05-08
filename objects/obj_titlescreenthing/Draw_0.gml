/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_white)
draw_set_font(global.font)
draw_set_halign(fa_left)

draw_text(320,150,string_hash_to_newline("START GAME##OPTIONS##CHARACTER##ERASE SAVE"))

pal_swap_set(currentPal, global.paletteselect, 0)
draw_sprite(hudSprite,hudIndex,98,450)
shader_reset()

//draw_text(120,425,string_hash_to_newline("CHARACTER: " + character + "##PALETTE: " + palette))