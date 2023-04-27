if (invframes == 0)
{
    if (state != 101 && obj_player.state != 8 && obj_player.state != 65)
    {
        with (obj_player)
        {
            if (y > other.y && other.vsp > 1 && other.grounded == 0 && other.state == 87)
                other.caughtplayer = 1
            if (y < other.y && attacking == 0 && state == 51 && vsp > 0 && sprite_index != spr_player_stompprep)
            {
                if (other.helmet == 0)
                {
                    other.stunned = 200
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    other.state = 98
                    other.image_index = 0
                }
                else
                    instance_create(x, (y + 50), obj_bumpeffect)
                scr_sound(sound_stomp)
                instance_create(x, (y + 50), obj_stompeffect)
                image_index = 0
                stompAnim = 1
                sprite_index = spr_player_stompprep
                if key_jump2
                    vsp = -14
                else
                    vsp = -9
            }
            if ((state == 63 || state == 83 || state == 39) && other.grounded == 1 && other.state == 98)
            {
                global.hit += 1
                instance_create(other.x, other.y, obj_slapstar)
                instance_create(other.x, other.y, obj_baddiegibs)
                other.flash = 1
                other.hp -= 1
                if (other.hp <= 0)
                    thrown = 1
                scr_sound(sound_tackleenemy)
                instance_create(x, y, obj_bumpeffect)
                other.vsp = -10
                other.hsp = xscale
                other.image_index = 0
                other.stunned = 200
                other.state = 98
                machpunchAnim = 1
                if ((!grounded) && state != 67 && key_jump2)
                {
                    sprite_index = spr_player_mach2jump
                    vsp = -11
                }
            }
            if ((!(y < other.y)) && state != 65 && state != 66 && other.state != 98)
            {
                instance_create(x, y, obj_bumpeffect)
                if (x != other.x)
                    xscale = (-(sign((x - other.x))))
                hsp = ((-xscale) * 10)
                vsp = -4
                image_index = 0
                state = 65
            }
        }
    }
}
