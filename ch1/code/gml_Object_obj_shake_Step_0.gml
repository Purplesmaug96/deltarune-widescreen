if (active == 0)
{
    cx = raw_camerax();
    cy = raw_cameray();
    if (global.flag[12] == 0)
    {
        __view_set(e__VW.XView, camera, cx + shakex);
        __view_set(e__VW.YView, camera, cy + shakey);
    }
    shakesign = -shakesign;
    active = 1;
    alarm[0] = shakespeed;
}

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
