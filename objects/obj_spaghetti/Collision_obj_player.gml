if (global.playerhealth < 3)
{
    obj_player.mach2 = 0
    obj_player.movespeed = 0
    obj_player.hsp = 0
    obj_player.state = 44
    obj_player.image_index = 0
    obj_player.sprite_index = spr_player_eatspaghetti
    global.playerhealth += 1
    instance_destroy()
}
