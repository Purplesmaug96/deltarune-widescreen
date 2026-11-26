// TODO: Why the commented out thing
if (!cutscene && !instance_exists(obj_shake)/* && (global.darkzone ? true : global.plot >= 245)*/) {
    var view_w = camerawidth();
    var view_h = cameraheight();
    var wd = (x + (global.darkzone ? initwd : 0)) - view_w / 2;
    var ht = (y + (global.darkzone ? initht : 0)) - view_h / 2;

    if (global.darkzone) {
        wd -= initwd / 2;
        ht -= initht / 2;
    }

    wd = floor(wd);
    ht = floor(ht);

    if (!global.darkzone) {
        // TODO: What does this do
        __view_set(e__VW.Object, 0, -4);
        wd += 11;
        ht += 17;
    }

    if (noclip) {
        camerax_set(wd);
        cameray_set(ht);
    }
    else {
        camerax_set(view_w > room_width ? -(view_w - room_width) / 2 : clamp(wd, 0, room_width - view_w));
        cameray_set(view_h > room_height ? -(view_h - room_height) / 2 : clamp(ht, 0, room_height - view_h));
    }
}

if (bg == 1)
{
    with (obj_backgrounderparent)
    {
        event_user(0);
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
