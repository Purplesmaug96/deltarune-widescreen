function scr_destroyoutside()
{
    var cx = raw_camerax();
    var cy = raw_cameray();
    if (global.mnfight != 2)
    {
        instance_destroy();
    }
    if (x < (cx - sprite_width))
    {
        instance_destroy();
    }
    if (x > (cx + global.widescreen_width + sprite_width))
    {
        instance_destroy();
    }
    if (y < (cy - sprite_height))
    {
        instance_destroy();
    }
    if (y > (cy + 480 + sprite_height))
    {
        instance_destroy();
    }
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
