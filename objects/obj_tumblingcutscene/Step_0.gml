/// @description Insert description here
// You can write your code in this editor

if !global.undertale scr_collide()

if (y > 540 && (!instance_exists(obj_fadeout)))
{
    with (instance_create(x, y, obj_fadeout)) {
        obj_player.targetRoom = Titlescreen
        obj_player.targetDoor = "A"
	}
}