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
}

if (state == 98 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 98)
    birdcreated = 0
if (hp <= 0)
    instance_destroy()
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hitboxcreate == 0 && (state == 86 || state == 94))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_pineahitbox))
        ID = other.id
}
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
