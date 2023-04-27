switch state
{
    case 86:
        scr_enemy_idle()
        break
    case 88:
        scr_enemy_charge()
        break
    case 90:
        scr_enemy_turn()
        break
    case 94:
        scr_enemy_walk()
        break
    case 96:
        scr_enemy_land()
        break
    case 97:
        scr_enemy_hit()
        break
    case 98:
        scr_enemy_stun()
        break
    case 89:
        scr_pizzagoblin_throw()
        break
    case 101:
        scr_enemy_grabbed()
        break
}

if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 98)
    birdcreated = 0
if (hitboxcreate == 0 && state == 88 && obj_player.state != 83 && obj_player.state != 63)
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
    {
        sprite_index = spr_player_mask
        ID = other.id
    }
}
if (x != obj_player.x)
{
    if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && obj_player.y == y && image_xscale == sign((obj_player.x - x)))
    {
        if (state == 94 || state == 86)
        {
            chargereset = 200
            vsp = -5
            scr_sound(sound_enemythrow)
            image_index = 0
            image_xscale = (-(sign((x - obj_player.x))))
            state = 88
        }
    }
}
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
