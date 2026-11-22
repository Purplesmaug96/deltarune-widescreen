if (con == 1)
{
    if (obj_mainchara.x >= x && global.interact == 0)
    {
        global.interact = 1;
        con = 2;
        global.facing = 1;
        with (obj_caterpillarchara)
        {
            sprite_index = rsprite;
            fun = 1;
        }
    }
}
if (con == 2)
{
    darkfade = scr_marker(-10, -10, spr_pixel_white);
    darkfade.image_xscale = 700;
    darkfade.image_yscale = 400;
    darkfade.image_alpha = 0;
    darkfade.depth = 800000;
    darkfade.image_blend = c_black;
    fade = 0;
    con = 3;
}
if (con == 3)
{
    snd_free_all();
    with (obj_caterpillarchara)
    {
        image_index = 0;
    }
    scr_pan(4, 0, 40);
    fade += 0.02;
    darkfade.image_alpha = fade;
    if (fade >= 0.6)
    {
        con = 4;
        alarm[4] = 11;
    }
}
if (con == 5)
{
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_45_0"); // Enough^1, Worms...!/% // Enough^1, Worms...!/% // Enough^1, Worms...!/% // Enough^1, Worms...!/% // Enough^1, Worms...!/%
    global.typer = 42;
    instance_create(camerax() + 120, 50, obj_writer);
    con = 6;
}
if (con == 6 && !instance_exists(obj_writer))
{
    appear = instance_create(camerax() + 420, cameray() + 160, obj_rurus_appear);
    snd_play(snd_rurus_appear);
    con = 14;
    rurus = scr_dark_marker(appear.x, appear.y, spr_rurus_idle);
    rurus.visible = 0;
    alarm[4] = 60;
}
if (con == 15)
{
    with (rurus)
    {
        visible = 1;
    }
    with (appear)
    {
        instance_destroy();
    }
    con = 16;
    alarm[4] = 21;
}
if (con == 16)
{
    with (darkfade)
    {
        image_alpha -= 0.05;
        if (image_alpha <= 0)
        {
            image_alpha = 0;
        }
    }
}
if (con == 17)
{
    global.currentsong[0] = snd_init("ruruskaado.ogg");
    global.currentsong[1] = mus_loop(global.currentsong[0]);
    global.fc = 18;
    global.fe = 0;
    global.typer = 6;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_88_0"); // * Thou may have CHEATETHED through mine PUZZLES^1, but.../ // * Thou may have CHEATETHED through mine PUZZLES^1, but.../ // * Thou may have CHEATETHED through mine PUZZLES^1, but.../ // * Thou may have CHEATETHED through mine PUZZLES^1, but.../ // * Thou may have CHEATETHED through mine PUZZLES^1, but.../
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_89_0"); // * In COMBAT^1, thou shalt be scattered about!/ // * In COMBAT^1, thou shalt be scattered about!/ // * In COMBAT^1, thou shalt be scattered about!/ // * In COMBAT^1, thou shalt be scattered about!/ // * In COMBAT^1, thou shalt be scattered about!/
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_90_0"); // * Come^1, knaves...^1! Prepareth for battle with...!/% // * Come^1, knaves...^1! Prepareth for battle with...!/% // * Come^1, knaves...^1! Prepareth for battle with...!/% // * Come^1, knaves...^1! Prepareth for battle with...!/% // * Come^1, knaves...^1! Prepareth for battle with...!/%
    d = instance_create(0, 0, obj_dialoguer);
    d.side = 1;
    con = 18;
}
if (con == 18 && !d_ex())
{
    with (rurus)
    {
        hspeed = 7;
    }
    con = 19;
    alarm[4] = 15;
}
if (con == 20)
{
    with (rurus)
    {
        scr_halt();
    }
    snd_play(snd_rurus_appear);
    checkerappear = instance_create(camerax() + 380, cameray() + 120, obj_rurus_appear);
    with (checkerappear)
    {
        type = 1;
    }
    checker = scr_dark_marker(checkerappear.x, checkerappear.y, spr_checkers_idle);
    with (checker)
    {
        visible = 0;
    }
    con = 21;
    alarm[4] = 60;
}
if (con == 22)
{
    with (checker)
    {
        visible = 1;
    }
    with (checkerappear)
    {
        instance_destroy();
    }
    global.smalarm[0] = 5;
    global.smyy[0] = 70;
    global.smxx[0] = 170;
    global.smdir[0] = 180;
    global.smspeed[0] = 10;
    global.smtype[0] = 3;
    global.smsprite[0] = spr_face_s6;
    global.smcolor[0] = c_white;
    global.smstring[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_133_0"); // * ... it looks the same. // * ... it looks the same. // * ... it looks the same. // * ... it looks the same. // * ... it looks the same.
    global.smalarm[1] = 5;
    global.smyy[1] = 70;
    global.smxx[1] = 170;
    global.smdir[1] = 180;
    global.smspeed[1] = 10;
    global.smtype[1] = 3;
    global.smsprite[1] = spr_face_s7;
    global.smcolor[1] = c_white;
    global.smstring[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_143_0"); // * IT LOOKS THE SAME!!!! // * IT LOOKS THE SAME!!!! // * IT LOOKS THE SAME!!!! // * IT LOOKS THE SAME!!!! // * IT LOOKS THE SAME!!!!
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_145_0"); // * Whatever this is!!!/ // * Whatever this is!!!/ // * Whatever this is!!!/ // * Whatever this is!!!/ // * Whatever this is!!!/
    scr_ralface(1, 3);
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_147_0"); // * Huh...!^1?&* It's the enemy from earlier...!/ // * Huh...!^1?&* It's the enemy from earlier...!/ // * Huh...!^1?&* It's the enemy from earlier...!/ // * Huh...!^1?&* It's the enemy from earlier...!/ // * Huh...!^1?&* It's the enemy from earlier...!/
    global.msg[3] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_148_0"); // * But its CROWN looks different^3!\f0 ^3 /% // * But its CROWN looks different^3!\f0 ^3 /% // * But its CROWN looks different^3!\f0 ^3 /% // * But its CROWN looks different^3!\f0 ^3 /% // * But its CROWN looks different^3!\f0 ^3 /%
    global.msg[4] = "%%";
    instance_create(0, 0, obj_dialoguer);
    con = 23;
}
if (con == 23 && !d_ex())
{
    global.typer = 6;
    global.fc = 18;
    global.fe = 0;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_161_0"); // * Yes! With my Control Crowne.../ // * Yes! With my Control Crowne.../ // * Yes! With my Control Crowne.../ // * Yes! With my Control Crowne.../ // * Yes! With my Control Crowne.../
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_162_0"); // * I mayst control ANY disc-shaped Lifeforme!/% // * I mayst control ANY disc-shaped Lifeforme!/% // * I mayst control ANY disc-shaped Lifeforme!/% // * I mayst control ANY disc-shaped Lifeforme!/% // * I mayst control ANY disc-shaped Lifeforme!/%
    instance_create(0, 0, obj_dialoguer);
    con = 24;
}
if (con == 24 && !d_ex())
{
    snd_play(snd_impact);
    instance_create(0, 0, obj_shake);
    with (checker)
    {
        image_index = 4;
    }
    con = 25;
    alarm[4] = 30;
}
if (con == 26)
{
    global.fc = 2;
    global.fe = 3;
    global.typer = 31;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_181_0"); // * Oh no!!!/ // * Oh no!!!/ // * Oh no!!!/ // * Oh no!!!/ // * Oh no!!!/
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_182_0"); // * It looks like it's in pain!^3!\f1 ^3 /% // * It looks like it's in pain!^3!\f1 ^3 /% // * It looks like it's in pain!^3!\f1 ^3 /% // * It looks like it's in pain!^3!\f1 ^3 /% // * It looks like it's in pain!^3!\f1 ^3 /%
    global.msg[2] = "%%";
    con = 27;
    instance_create(0, 0, obj_dialoguer);
}
if (con == 27 && !d_ex())
{
    global.fc = 18;
    global.typer = 6;
    global.fe = 0;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_194_0"); // * Yes..^1. The control crown is painful.../ // * Yes..^1. The control crown is painful.../ // * Yes..^1. The control crown is painful.../ // * Yes..^1. The control crown is painful.../ // * Yes..^1. The control crown is painful.../
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_195_0"); // * But^1, I'm certain this Creature will feeleth relief.../ // * But^1, I'm certain this Creature will feeleth relief.../ // * But^1, I'm certain this Creature will feeleth relief.../ // * But^1, I'm certain this Creature will feeleth relief.../ // * But^1, I'm certain this Creature will feeleth relief.../
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_196_0"); // * When it sees how much MORE pain THOU'LL be in!!!/% // * When it sees how much MORE pain THOU'LL be in!!!/% // * When it sees how much MORE pain THOU'LL be in!!!/% // * When it sees how much MORE pain THOU'LL be in!!!/% // * When it sees how much MORE pain THOU'LL be in!!!/%
    instance_create(0, 0, obj_dialoguer);
    con = 28;
}
if (con == 28 && !d_ex())
{
    with (rurus)
    {
        hspeed = 10;
    }
    snd_free_all();
    global.encounterno = 27;
    scr_encountersetup(global.encounterno);
    global.flag[9] = 1;
    global.batmusic[0] = snd_init("checkers.ogg");
    global.specialbattle = 3;
    instance_create(0, 0, obj_encounterbasic);
    depth = 4000;
    with (checker)
    {
        scr_move_to_point_over_time(global.monstermakex[0], global.monstermakey[0], 20);
    }
    con = 29;
    alarm[4] = 20;
}
if (con == 30)
{
    with (checker)
    {
        speed = 0;
    }
    con = 31;
    alarm[4] = 5;
}
if (con == 32)
{
    with (checker)
    {
        instance_destroy();
    }
    con = 35;
    alarm[4] = 30;
    victimer = 0;
}
if (con == 36)
{
    if (!instance_exists(obj_battlecontroller))
    {
        rurus.x = camerax() + 660;
        with (rurus)
        {
            hspeed = -12;
        }
        con = 37;
    }
}
if (con == 37)
{
    if (rurus.x <= (camerax() + 420))
    {
        with (rurus)
        {
            scr_halt();
        }
        con = 38;
        alarm[4] = 20;
    }
}
if (con == 39)
{
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_260_0"); // \E6* .../ // \E6* .../ // \E6* .../ // \E6* .../ // \E6* .../
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_261_0"); // \E1* .../% // \E1* .../% // \E1* .../% // \E1* .../% // \E1* .../%
    global.fc = 18;
    global.typer = 6;
    global.fe = 6;
    instance_create(0, 0, obj_dialoguer);
    con = 39.1;
}
if (con == 39.1 && !d_ex())
{
    global.currentsong[0] = snd_init("ruruskaado.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 0.9);
    global.fe = 5;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_274_0"); // \E5* Why^1, brilliant^1!&* Just BRILLIANT!/ // \E5* Why^1, brilliant^1!&* Just BRILLIANT!/ // \E5* Why^1, brilliant^1!&* Just BRILLIANT!/ // \E5* Why^1, brilliant^1!&* Just BRILLIANT!/ // \E5* Why^1, brilliant^1!&* Just BRILLIANT!/
    global.msg[1] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_275_0"); // \E3* I knew you couldst do it^1! Thou great heroes^1, thou!/ // \E3* I knew you couldst do it^1! Thou great heroes^1, thou!/ // \E3* I knew you couldst do it^1! Thou great heroes^1, thou!/ // \E3* I knew you couldst do it^1! Thou great heroes^1, thou!/ // \E3* I knew you couldst do it^1! Thou great heroes^1, thou!/
    global.msg[2] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_276_0"); // \E6* Thou see-eth^1, that was merely.../ // \E6* Thou see-eth^1, that was merely.../ // \E6* Thou see-eth^1, that was merely.../ // \E6* Thou see-eth^1, that was merely.../ // \E6* Thou see-eth^1, that was merely.../
    global.msg[3] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_277_0"); // \E3* A friendly TEST of thine abilities!/ // \E3* A friendly TEST of thine abilities!/ // \E3* A friendly TEST of thine abilities!/ // \E3* A friendly TEST of thine abilities!/ // \E3* A friendly TEST of thine abilities!/
    global.msg[4] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_278_0"); // \E2* But thou hast WON^1! And now^1, NOTHING blocks thine path!/ // \E2* But thou hast WON^1! And now^1, NOTHING blocks thine path!/ // \E2* But thou hast WON^1! And now^1, NOTHING blocks thine path!/ // \E2* But thou hast WON^1! And now^1, NOTHING blocks thine path!/ // \E2* But thou hast WON^1! And now^1, NOTHING blocks thine path!/
    global.msg[5] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_279_0"); // \E5* I^1, personally^1, could NOT be less of an obstruction!/% // \E5* I^1, personally^1, could NOT be less of an obstruction!/% // \E5* I^1, personally^1, could NOT be less of an obstruction!/% // \E5* I^1, personally^1, could NOT be less of an obstruction!/% // \E5* I^1, personally^1, could NOT be less of an obstruction!/%
    instance_create(0, 0, obj_dialoguer);
    con = 40;
}
if (con == 40 && !d_ex())
{
    snd_free_all();
    con = 41;
    alarm[4] = 30;
}
if (con == 42)
{
    global.fc = 2;
    global.fe = 6;
    global.typer = 31;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_296_0"); // * But you -%% // * But you -%% // * But you -%% // * But you -%% // * But you -%%
    instance_create(0, 0, obj_dialoguer);
    con = 43;
}
if (con == 43 && !d_ex())
{
    global.fc = 18;
    global.fe = 3;
    global.typer = 6;
    global.msg[0] = scr_84_get_lang_string("obj_rurus_checker_event_slash_Step_0_gml_306_0"); // \E3* Luck be with you^1. Heroes!/% // \E3* Luck be with you^1. Heroes!/% // \E3* Luck be with you^1. Heroes!/% // \E3* Luck be with you^1. Heroes!/% // \E3* Luck be with you^1. Heroes!/%
    instance_create(0, 0, obj_dialoguer);
    con = 44;
    with (rurus)
    {
        hspeed = 24;
    }
}
if (con == 44 && !d_ex())
{
    with (obj_caterpillarchara)
    {
        fun = 0;
    }
    global.facing = 0;
    global.plot = 175;
    global.interact = 0;
    con = 45;
    instance_destroy();
}
