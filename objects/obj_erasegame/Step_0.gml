/// @description Insert description here
// You can write your code in this editor

scr_getinput()

if (!instance_exists(obj_keyconfig))
{
    if ((-key_left2) && optionselected > 0)
    {
        optionselected -= 1
        scr_sound(sound_step)
    }
    if (key_right2 && optionselected < 1)
    {
        optionselected += 1
        scr_sound(sound_step)
    }
}
if (optionselected == 1 && key_jump)
{
    file_delete("saveData.ini")
    scr_initinput()
    scr_sound(sound_explosion)
    obj_titlescreenthing.selected = false
    instance_destroy()
}
if (key_slap2 || (optionselected == 0 && key_jump) || key_start)
{
    scr_sound(sound_enemythrow)
    obj_titlescreenthing.selected = false
	obj_titlescreenthing.buffer = 5
    instance_destroy()
}
