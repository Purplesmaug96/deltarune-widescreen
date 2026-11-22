__view_set(e__VW.XView, 0, raw_camerax() + panx);
__view_set(e__VW.YView, 0, raw_cameray() + pany);
pantimer += 1;
if (pantimer >= panmax)
{
    instance_destroy();
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
