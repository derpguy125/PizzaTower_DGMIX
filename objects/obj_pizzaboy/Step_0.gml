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

if (!instance_exists(obj_slaphitbox))
    slapped = 0
stunned = 100
if (cigar == 0)
{
    landspr = spr_pizzaboy
    idlespr = spr_pizzaboy
    fallspr = spr_pizzaboy
    hitceillingspr = spr_pizzaboy
    stunfalltransspr = spr_pizzaboy
    hitwallspr = spr_pizzaboy
    stunfallspr = spr_pizzaboy
    rollingspr = spr_pizzaboy
    walkspr = spr_pizzaboy
    turnspr = spr_pizzaboy
    flyingspr = spr_pizzaboy
    hitspr = spr_pizzaboy
    stunlandspr = spr_pizzaboy
    stunspr = spr_pizzaboy
    recoveryspr = spr_pizzaboy
    stompedspr = spr_pizzaboy
    grabbedspr = spr_pizzaboy
}
if (state != 101)
    depth = 0
if (state != 98)
    thrown = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
