draw_self();
draw_set_font(global.font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x,230 + (sin(degtorad(titletime))*4),text,0.5,0.5,sin(degtorad(titletime+90))*10);
draw_set_halign(fa_left);
draw_set_valign(fa_top);