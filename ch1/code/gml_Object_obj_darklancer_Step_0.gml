if (con == 0)
{
    // TODO: Figure out what is supposed to happen here, maybe switch to raw_*
    if (room == room_dark2)
    {
        if (x < (camerax() + 630))
        {
            vspeed = -8;
            image_speed = 0.2;
            con = 1;
            if (global.plot < 12)
            {
                global.plot = 12;
            }
        }
    }
    if (room == room_dark3)
    {
        if (x < (camerax() + 610))
        {
            hspeed = 8;
            image_speed = 0.2;
            con = 1;
            if (global.plot < 13)
            {
                global.plot = 13;
            }
        }
    }
}
