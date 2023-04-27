/// @description Insert description here
// You can write your code in this editor

draw_set_font(global.font2);
draw_set_color(c_black);
draw_text(64,64,string_hash_to_newline("Congratulations! You beat the level!##Final Score: " + string(global.collect) + "#Rank: " + rank +
										"#Maximum Combo: " + string(global.maxcombo) + "#Times hurt: " + string(global.hurtcounter) + "##Press ENTER to restart the game"))