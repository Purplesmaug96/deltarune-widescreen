scrollspeed[0] = 0.1;
scrollspeed[1] = 0.3;
scrollspeed[2] = 0.5;
scrollspeed[3] = 0.6;
scrollspeed[4] = 0.7;
scrollspeed[5] = 0.8;
scrollspeed[6] = 0.9;
for (i = 0; i < 7; i += 1)
{
    xxx = raw_camerax();
    gg = room_width - camerawidth();
    if (xxx > gg)
    {
        xxx = gg;
    }
    if (xxx >= 0)
    {
        __background_set(e__BG.X, i, floor(xxx - (xxx * scrollspeed[i])));
    }
    if (xxx >= gg)
    {
        __background_set(e__BG.X, i, 0 + floor(gg - (gg * scrollspeed[i])));
    }
}

enum e__BG
{
    Visible,
    Foreground,
    Index,
    X,
    Y,
    Width,
    Height,
    HTiled,
    VTiled,
    XScale,
    YScale,
    HSpeed,
    VSpeed,
    Blend,
    Alpha
}
