draw_set_font(global.font2)
draw_set_halign(fa_left)
draw_set_color(c_black)

draw_sprite(spr_tvpaper, 0, xi, yi)

if (!surface_exists(promptsurface))
	promptsurface = surface_create(664,48)
surface_set_target(promptsurface)

draw_clear_alpha(c_black, 0)

if yi = 490 {
	promptx -= promptspd
	
	if promptx < -(string_width(message)) - 12 {
		
		if !ds_queue_empty(msg_store) then {
			message = ds_queue_dequeue(msg_store);
			promptx = promptxstart;
		} else {
			promptx = promptxstart;
			message = "";
			showtext = 0;
			ds_queue_clear(msg_store);
		}
	}
	
	if message != "" {
		var msg_width = get_text_proportional(message);
	
		for (i = 0; i < string_length(message); i++) {
			draw_text((promptx + msg_width[i] + irandom_range(-1,1)), 8 + (sin(degtorad(promptx + (i * 15))) * 4), string_char_at(message, i + 1))
		}
	}
}

surface_reset_target()
draw_surface(promptsurface, 150, 492)

draw_set_font(global.font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha)

draw_sprite(spr_roomnamebg,0,480,yi2)
draw_text_transformed(xi2, yi2, string_hash_to_newline(global.roomname), 0.5, 0.5, 0)

if (global.combo != 0 && global.combotime != 0)
    draw_text(848, 168, "COMBO: " + string_hash_to_newline(global.combo))
if (tvsprite == spr_tvdefault)
{
    chose = 0
}
draw_text(192, 60, string_hash_to_newline(global.collect))

if (global.combotime > 0)
    draw_text(832, 200, string_hash_to_newline(string(global.combotime)))
else
    global.hit = 0
//draw_text(832, 300, string_hash_to_newline(((string(global.golfhit) + " ") + "GOLF HIT")))
