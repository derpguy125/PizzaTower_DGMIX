switch state
{
    case 86:
        scr_enemy_idle()
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
    case 101:
        scr_enemy_grabbed()
        break
    case 89:
        scr_pizzagoblin_throw()
        break
}

if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (hp <= 0)
    instance_destroy()
if (state != 98)
    birdcreated = 0
landspr = spr_pizzagoblin_land
idlespr = spr_pizzagoblin_idle
fallspr = spr_pizzagoblin_fall
hitceillingspr = spr_sausageman_hitceilling
stunfalltransspr = spr_pizzagoblin_stunfalltrans
hitwallspr = spr_pizzagoblin_hitwall
stunfallspr = spr_pizzagoblin_stunfall
walkspr = spr_pizzagoblin_walk
turnspr = spr_pizzagoblin_turn
flyingspr = spr_pizzagoblin_flying
hitspr = spr_pizzagoblin_hit
stunlandspr = spr_pizzagoblin_stunland
stunspr = spr_pizzagoblin_stun
recoveryspr = spr_pizzagoblin_recovery
stompedspr = spr_pizzagoblin_stomped
grabbedspr = spr_pizzagoblin_grabbed
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
if (bombreset > 0)
    bombreset--
if (x != obj_player.x && state != 89 && bombreset == 0)
{
    if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && obj_player.y == y)
    {
        if (state == 94 || state == 86)
        {
            scr_sound(sound_enemythrow)
            image_index = 0
            image_xscale = (-(sign((x - obj_player.x))))
            state = 89
        }
    }
}
