if (con < 400)
{
    // TODO: Raw or normal? Figure out later
    if (con == 1 && raw_camerax() >= (xx - 13) && raw_camerax() <= (xx + 20) && global.interact == 0)
    {
        __view_set(e__VW.XView, 0, xx - 10);
        global.interact = 1;
        con = 40;
        global.msc = 135;
        scr_text(global.msc);
        global.fe = 3;
        global.typer = 31;
        global.fc = 2;
        instance_create(0, 0, obj_dialoguer);
    }
    if (con == 20 && d_ex() == 0)
    {
        global.encounterno = 3;
        global.specialbattle = 3;
        global.flag[9] = 1;
        global.batmusic[0] = snd_init("battle.ogg");
        instance_create(0, 0, obj_encounterbasic);
        con = 21;
        alarm[4] = 10;
    }
    if (con == 22)
    {
        if (instance_exists(obj_battlecontroller))
        {
            with (dummy)
            {
                visible = 0;
            }
            con = 23;
        }
    }
    if (con == 23)
    {
        if (instance_exists(obj_endbattle))
        {
            con = 23.5;
            alarm[4] = 20;
        }
    }
    if (con >= 24 && con <= 28)
    {
        global.interact = 1;
    }
    if (con == 24.5)
    {
        con = 24;
        alarm[4] = 4;
    }
    if (con == 25)
    {
        con = 26;
        alarm[4] = 4;
    }
    if (con == 27)
    {
        global.fc = 2;
        global.fe = 0;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_87_0"); // \E8* Oh^1, that was fun^1!&* You're a wonderful student^1, Kris!/
        global.msg[1] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_88_0"); // \E1* ... and^1, er^1, in case you ever need a refresher, I.../
        global.msg[2] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_89_0"); // \E8* Here^1!&* I wrote a Manual for you and Susie!/
        global.msg[3] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_90_0") + scr_get_input_name(6) + scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_90_1"); // \E0* Press  //  to open the menu and use it in your ITEMS./
        scr_noface(4);
        global.msg[5] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_92_0"); // * (You got the Manual.)/%
        if (global.flag[205] >= 4)
        {
            global.msg[0] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_95_0"); // \E6* Sorry^1, Kris^1. I'll try to be a better teacher next time./
            global.msg[1] = scr_84_get_lang_string("obj_tutorialbattleevent_slash_Step_0_gml_96_0"); // \E1* ... Actually^1, umm^1, if you prefer to read^1, instead.../
        }
        instance_create(0, 0, obj_dialoguer);
        scr_itemget(4);
        con = 28;
    }
    if (con == 28 && d_ex() == 0)
    {
        global.interact = 0;
        if (global.plot < 31)
        {
            global.plot = 31;
        }
        con = 29;
        instance_destroy();
    }
    if (con == 40 && d_ex() == 0)
    {
        scr_itemget(4);
        con = 41;
        if (global.plot < 31)
        {
            global.plot = 31;
        }
        global.interact = 0;
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
