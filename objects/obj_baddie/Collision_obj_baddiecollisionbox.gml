if (object_index != obj_pizzaball)
{
    with (other.id)
    {
        if (instance_exists(baddieID) && baddieID != other.id)
        {
            if ((baddieID.state == 98 && baddieID.hsp != 0 && baddieID.thrown == 1) || (baddieID.state == 101 && obj_player.state == 36))
                instance_destroy(other.id)
        }
    }
}
