active = 1;
xx = round((19 * f) + camerax());
yy = round((20 * f) + cameray());
if (side == 0)
{
    writer = instance_create(xx + (10 * f), yy - (5 * f), obj_writer);
    scr_facechoice();
    with (writer)
    {
        dialoguer = 1;
        jpspecial = other.jpspecial;
    }
}
else if (side == 1)
{
    writer = instance_create(xx + (10 * f), yy + (150 * f), obj_writer);
    writer.skippable = skippable;
    scr_facechoice();
    with (writer)
    {
        dialoguer = 1;
        jpspecial = other.jpspecial;
    }
}
if (i_ex(writer) && global.fc != 0)
{
    with (writer)
    {
        dialoguer = 1;
        if (originalcharline == 33)
        {
            charline = 26;
        }
        jpspecial = other.jpspecial;
    }
}
zurasucon = 1;

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
