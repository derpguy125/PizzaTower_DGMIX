/// @description Insert description here
// You can write your code in this editor

image_speed = 0.35
hsp = 8
vsp = -8
grav = 0.5

if global.undertale then {
	alarm[0] = 7;
	image_speed /= 7;
}

palette = spr_peppalette
if obj_player.character = "N" then {
	sprite_index = spr_playerN_machfreefall;
	palette = spr_noisepalette;
}