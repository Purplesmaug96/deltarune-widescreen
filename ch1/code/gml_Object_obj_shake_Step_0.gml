if (active == 0)
{
    cx = raw_camerax();
    cy = raw_cameray();
    if (global.flag[12] == 0)
    {
        camerax_set(cx + shakex);
        cameray_set(cy + shakey);
    }
    shakesign = -shakesign;
    active = 1;
    alarm[0] = shakespeed;
}
