if (state != 101)
{
    with (obj_player)
    {
        if (y < other.y && attacking == 0 && state == 51 && vsp > 0)
        {
            scr_sound(sound_stomp)
            if (vsp > 0)
            {
                other.hp = 0
                other.stunned = 200
                if (x != other.x)
                    other.image_xscale = (-(sign((other.x - x))))
                image_index = 0
                if key_jump2
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = 98
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -14
                    sprite_index = spr_player_stompprep
                }
                else
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = 98
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -9
                    sprite_index = spr_player_stompprep
                }
            }
        }
        if (state == 62)
        {
            scr_sound(sound_tackleenemy)
            instance_create(x, y, obj_bumpeffect)
            other.stunned = 40
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.vsp = -5
            other.hsp = ((-other.image_xscale) * 3)
            hsp = ((-xscale) * 4)
            vsp = -4
            machpunchAnim = 1
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.state = 98
            image_index = 0
            state = 50
        }
        if (state == 63 && other.grounded == 1)
        {
            scr_sound(sound_tackleenemy)
            other.hp = 0
            instance_create(x, y, obj_bumpeffect)
            other.vsp = -10
            other.hsp = xscale
            other.image_index = 0
            other.stunned = 200
            other.state = 98
            machpunchAnim = 1
            if ((!(scr_solid(x, (y + 1)))) && state != 67)
                vsp = -10
        }
        if (attacking == 1 && state != 63)
        {
            if (state == 83)
                other.shot = 1
            image_index = 0
            instance_destroy(other.id)
            machpunchAnim = 1
            if ((!(scr_solid(x, (y + 1)))) && state != 67)
                vsp = -10
        }
        if (attacking == 0 && state != 50 && state != 66 && (!(y < other.y)) && grabbing == 0 && other.state != 98)
        {
            if (x != other.x)
            {
                other.image_xscale = (-(sign((other.x - x))))
                xscale = (-(sign((x - other.x))))
            }
            hsp = ((-xscale) * 4)
            vsp = -4
            other.image_xscale = (-xscale)
            other.hsp = ((-other.image_xscale) * 4)
            other.vsp = -4
            if (other.state == 94 || other.state == 90)
                other.state = 86
            image_index = 0
            state = 65
            if (other.state == 96)
                other.state = 86
        }
    }
}
