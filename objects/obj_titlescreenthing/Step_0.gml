/// @description Insert description here
// You can write your code in this editor

if !selected {

	scr_getinput()

	if key_down2 and selection < 2 then {
		selection ++;
		scr_sound(sound_points)
	}
	if key_up2   and selection > 0 then {
		selection --;
		scr_sound(sound_points)
	}
	
	if buffer == 0 {
		if key_jump and selection == 0 {
			scr_sound(sound_pizzagot)
			selected = true
			alarm[0] = 30
		}
	
		if key_jump and selection == 1 {
			scr_sound(sound_pizzagot)
			selected = true
			alarm[1] = 5
		}
	
		if key_jump and selection == 2 {
			scr_sound(sound_pizzagot)
			selected = true
			alarm[2] = 5
		}
	}
	
	if instance_exists(obj_cursor) {
		obj_cursor.x = 286
		obj_cursor.y = 200 + (selection * 64)
	}
	
	if (buffer > 0)
		buffer--
}