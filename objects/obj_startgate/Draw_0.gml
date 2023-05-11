/// @description Insert description here
// You can write your code in this editor
draw_self()

if place_meeting(x,y,obj_player) {
	draw_set_color(c_aqua)
	draw_set_halign(fa_left)
	draw_set_font(global.font2)

	var width = string_width(levelname)

	draw_rectangle_color(x + 80 - ((width / 2) + 8), y + 22, x + 80 + ((width / 2) + 8), y + 60, c_white, c_white, c_white, c_white, 0)
	draw_rectangle_color(x + 80 - ((width / 2) + 4), y + 26, x + 80 + ((width / 2) + 4), y + 56, c_black, c_black, c_black, c_black, 0)

	siner ++
	
	var txtWidth = get_text_proportional(levelname)
	
	for (i = 0; i < string_length(levelname); i++) {
		draw_text((x + 80 - ((width / 2) + 16)) + txtWidth[i], y + 30 + (sin(degtorad((siner * 2) + (i * 15))) * 4), string_char_at(levelname, i+1))
	}
	
	draw_set_halign(fa_center)
	draw_set_font(global.font)
	draw_set_color(c_white)
	
	var scr, lap;
	
	ini_open("saveData.ini")
	scr = ini_read_real("Scores", level, 0)
	lap = ini_read_real("Laps", level, 0)
	ini_close()
	
	if scr != 0 then {
		draw_text(x + 80, y + 70, "SCORE: " + string(scr))
	}
	if lap != 0 {
		draw_text(x + 80, y + 100, "LAPS: " + string(lap + 1))
	}
}