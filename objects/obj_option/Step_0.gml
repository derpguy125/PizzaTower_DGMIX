/// @description Insert description here
// You can write your code in this editor

scr_getinput()

if (!instance_exists(obj_keyconfig))
{
    if (key_up2 && optionselected > 0)
    {
        optionselected -= 1
        scr_sound(sound_step)
    }
    if (key_down2 && optionselected < 2)
    {
        optionselected += 1
        scr_sound(sound_step)
    }
}
if (optionselected == 0)
{
    if (key_right2 && optionsaved_fullscreen == 0)
        optionsaved_fullscreen = 1
    if ((-key_left2) && optionsaved_fullscreen == 1)
        optionsaved_fullscreen = 0
    if (key_jump && optionsaved_fullscreen == 0)
    {
        window_set_fullscreen(true)
        ini_open("saveData.ini")
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 0)
        ini_close()
    }
    if (key_jump && optionsaved_fullscreen == 1)
    {
        window_set_fullscreen(false)
        ini_open("saveData.ini")
        global.option_fullscreen = ini_write_real("Option", "fullscreen", 1)
        ini_close()
    }
}
if (optionselected == 1)
{
    if (key_right2 && optionsaved_resolution < 2)
        optionsaved_resolution += 1
    if ((-key_left2) && optionsaved_resolution > 0)
        optionsaved_resolution -= 1
    if (key_jump && optionsaved_resolution == 0)
    {
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 0)
        ini_close()
        window_set_size(480, 270)
    }
    if (key_jump && optionsaved_resolution == 1)
    {
        window_set_size(960, 540)
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 1)
        ini_close()
    }
    if (key_jump && optionsaved_resolution == 2)
    {
        window_set_size(1980, 1080)
        ini_open("saveData.ini")
        global.option_resolution = ini_write_real("Option", "resolution", 2)
        ini_close()
    }
}
if (buffer > 0)
	buffer--
if (optionselected == 2 and buffer == 0)
{
    if (!instance_exists(obj_keyconfig))
    {
        if key_jump
        {
            visible = false
            with (instance_create(x, y, obj_keyconfig))
                depth = (other.depth - 1)
        }
    }
}

if ((key_slap2 || key_start) && (!instance_exists(obj_keyconfig)))
{
    scr_sound(sound_enemythrow)
    obj_titlescreenthing.selected = false
    instance_destroy()
}
