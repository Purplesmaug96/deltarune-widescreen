if (con == 0 && global.interact == 0)
{
    xx = camerax();
    yy = cameray();
    if (obj_mainchara.x >= x)
    {
        global.interact = 1;
        global.facing = 1;
        with (obj_caterpillarchara)
        {
            visible = 0;
        }
        with (obj_mainchara)
        {
            visible = 0;
        }
        r = scr_dark_marker(obj_caterpillarchara.x, obj_caterpillarchara.y, spr_ralseir);
        k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisr_dark);
        if (global.flag[250] == 0)
        {
            with (obj_marker)
            {
                hspeed = 2;
                image_speed = 0.2;
            }
            scr_pan(4, 0, 70);
            mus_volume(global.currentsong[1], 0, 90);
            with (obj_mainchara)
            {
                cutscene = 1;
            }
            con = 1;
            alarm[4] = 90;
        }
        else
        {
            with (obj_marker)
            {
                hspeed = 4;
                image_speed = 0.2;
            }
            scr_pan(8, 0, 35);
            mus_volume(global.currentsong[1], 0, 45);
            with (obj_mainchara)
            {
                cutscene = 1;
            }
            con = 1;
            alarm[4] = 45;
        }
        thrashmachine = instance_create(xx + 740, yy + 160, obj_thrashmachine);
        with (thrashmachine)
        {
            value = 0;
            animate = 0;
            bad = 1;
        }
    }
}
if (con == 2)
{
    with (k)
    {
        scr_halt();
    }
    with (r)
    {
        scr_halt();
    }
    global.typer = 31;
    global.fc = 2;
    global.fe = 3;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_56_0"); // * K..^1. Kris^1! Isn't that the \cYmachine\cW we designed...!?/ // * K..^1. Kris^1! Isn't that the \cYmachine\cW we designed...!?/ // * K..^1. Kris^1! Isn't that the \cYmachine\cW we designed...!?/ // * K..^1. Kris^1! Isn't that the \cYmachine\cW we designed...!?/
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_57_0"); // \EA* Alright^1! This will be tough^1, but let's try our best!/% // \EA* Alright^1! This will be tough^1, but let's try our best!/% // \EA* Alright^1! This will be tough^1, but let's try our best!/% // \EA* Alright^1! This will be tough^1, but let's try our best!/%
    if (global.flag[250] == 1)
    {
        global.fc = 2;
        global.fe = 9;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_62_0"); // * ... is that what I think it is?/% // * ... is that what I think it is?/% // * ... is that what I think it is?/% // * ... is that what I think it is?/%
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 2;
        global.fe = 12;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_68_0"); // * .../% // * .../% // * .../% // * .../%
    }
    instance_create(0, 0, obj_dialoguer);
    con = 3;
    valuetimer = 0;
}
if (con == 3 && !d_ex())
{
    valuetimer += 1;
    if (global.flag[250] >= 1)
    {
        valuetimer += 1;
    }
    with (thrashmachine)
    {
        if (value < 1)
        {
            value += 0.04;
        }
        else
        {
            value = 1;
        }
    }
    if (valuetimer >= 60)
    {
        con = 4;
    }
}
if (con == 4 && !d_ex())
{
    global.typer = 31;
    global.fc = 2;
    global.fe = 9;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_93_0"); // * Oh^1.&* That's..^1. not good^1, actually./% // * Oh^1.&* That's..^1. not good^1, actually./% // * Oh^1.&* That's..^1. not good^1, actually./% // * Oh^1.&* That's..^1. not good^1, actually./%
    if (global.flag[250] == 1)
    {
        global.fe = 12;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_97_0"); // * ... yes^1. It was./% // * ... yes^1. It was./% // * ... yes^1. It was./% // * ... yes^1. It was./%
    }
    if (global.flag[250] >= 2)
    {
        global.fe = 6;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_102_0"); // * ... how many of these do they have?/% // * ... how many of these do they have?/% // * ... how many of these do they have?/% // * ... how many of these do they have?/%
    }
    instance_create(0, 0, obj_dialoguer);
    con = 17;
}
if (con == 17 && !d_ex())
{
    global.encounterno = 31;
    scr_encountersetup(global.encounterno);
    l = scr_dark_marker(global.monstermakex[1] + 200, global.monstermakey[1] - 50, spr_lancer_lt);
    s = scr_dark_marker(global.monstermakex[0] + 200, global.monstermakey[0], spr_susiel_dark);
    with (l)
    {
        scr_depth();
        hspeed = -5;
        image_speed = 0.1;
    }
    with (s)
    {
        scr_depth();
        hspeed = -5;
        image_speed = 0.1;
    }
    con = 18;
    alarm[4] = 40;
}
if (con == 19)
{
    with (l)
    {
        scr_halt();
    }
    with (s)
    {
        scr_halt();
    }
    con = 20;
    alarm[4] = 20;
}
if (con == 21 && !d_ex())
{
    global.typer = 32;
    global.fc = 5;
    global.fe = 2;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_148_0"); // * Ho ho ho^1! You think THAT'S bad^1, just WAIT!/ // * Ho ho ho^1! You think THAT'S bad^1, just WAIT!/ // * Ho ho ho^1! You think THAT'S bad^1, just WAIT!/ // * Ho ho ho^1! You think THAT'S bad^1, just WAIT!/
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_149_0"); // \E9* ... and see what happens when it STARTS!!!/% // \E9* ... and see what happens when it STARTS!!!/% // \E9* ... and see what happens when it STARTS!!!/% // \E9* ... and see what happens when it STARTS!!!/%
    con = 21.1;
    if (global.flag[250] < 1)
    {
        instance_create(0, 0, obj_dialoguer);
    }
}
if (con == 21.1 && !d_ex())
{
    with (r)
    {
        sprite_index = spr_ralsei_shock_overworld;
    }
    snd_play(snd_badexplosion);
    snd_play(snd_lancerlaugh);
    boom = scr_dark_marker(thrashmachine.x, thrashmachine.y + 40, spr_realisticexplosion);
    with (boom)
    {
        depth = -400;
        image_speed = 0.5;
        image_xscale = 3;
        image_yscale = 3;
    }
    with (s)
    {
        sprite_index = spr_susiel_dark_laugh;
        image_speed = 0.25;
    }
    with (l)
    {
        sprite_index = spr_lancer_lt_laugh;
        image_speed = 0.25;
    }
    con = 21.2;
    boomtimer = 0;
}
if (con == 21.2)
{
    boomtimer += 1;
    if (instance_exists(boom))
    {
        if (boom.image_index >= 5)
        {
            with (thrashmachine)
            {
                instance_destroy();
            }
        }
    }
    with (boom)
    {
        if (image_index >= 16)
        {
            instance_destroy();
        }
    }
    if (boomtimer >= 70)
    {
        con = 21.3;
    }
}
if (con == 21.3)
{
    with (s)
    {
        scr_halt();
        sprite_index = spr_susiel_dark;
    }
    with (l)
    {
        scr_halt();
        sprite_index = spr_lancer_lt;
    }
    with (r)
    {
        sprite_index = spr_ralseir;
    }
    global.fc = 1;
    global.typer = 30;
    global.fe = 2;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_210_0"); // * Your design sucked so we blew it up./ // * Your design sucked so we blew it up./ // * Your design sucked so we blew it up./ // * Your design sucked so we blew it up./
    scr_ralface(1, 1);
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_212_0"); // * Ah^1. I see./ // * Ah^1. I see./ // * Ah^1. I see./ // * Ah^1. I see./
    global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_213_0"); // \E6* ... So..^1. now what's your plan going to be?/ // \E6* ... So..^1. now what's your plan going to be?/ // \E6* ... So..^1. now what's your plan going to be?/ // \E6* ... So..^1. now what's your plan going to be?/
    scr_susface(4, 2);
    global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_215_0"); // * Turns out we didn't need a plan^1. Just a rule./ // * Turns out we didn't need a plan^1. Just a rule./ // * Turns out we didn't need a plan^1. Just a rule./ // * Turns out we didn't need a plan^1. Just a rule./
    scr_lanface(6, 1);
    global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_217_0"); // * Anyone that gets in our way.../ // * Anyone that gets in our way.../ // * Anyone that gets in our way.../ // * Anyone that gets in our way.../
    scr_susface(8, 2);
    global.msg[9] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_219_0"); // * Gets crushed into dust./ // * Gets crushed into dust./ // * Gets crushed into dust./ // * Gets crushed into dust./
    scr_ralface(10, 1);
    global.msg[11] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_221_0"); // * But Susie^1, you need us to return home./ // * But Susie^1, you need us to return home./ // * But Susie^1, you need us to return home./ // * But Susie^1, you need us to return home./
    global.msg[12] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_222_0"); // \E6* Doesn't crushing us seem a little counterproductive?/ // \E6* Doesn't crushing us seem a little counterproductive?/ // \E6* Doesn't crushing us seem a little counterproductive?/ // \E6* Doesn't crushing us seem a little counterproductive?/
    scr_susface(13, 2);
    global.msg[14] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_224_0"); // * Nah^1, see^1, that's where you're wrong./ // * Nah^1, see^1, that's where you're wrong./ // * Nah^1, see^1, that's where you're wrong./ // * Nah^1, see^1, that's where you're wrong./
    global.msg[15] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_225_0"); // \E0* Ya see^1, I KNOW I can't get back without you guys./ // \E0* Ya see^1, I KNOW I can't get back without you guys./ // \E0* Ya see^1, I KNOW I can't get back without you guys./ // \E0* Ya see^1, I KNOW I can't get back without you guys./
    global.msg[16] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_226_0"); // \E1* But being a - heh - "good guy" REALLY isn't my style./ // \E1* But being a - heh - "good guy" REALLY isn't my style./ // \E1* But being a - heh - "good guy" REALLY isn't my style./ // \E1* But being a - heh - "good guy" REALLY isn't my style./
    global.msg[17] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_227_0"); // \E2* So^1, I thought of a little way we can just..^1. settle this./% // \E2* So^1, I thought of a little way we can just..^1. settle this./% // \E2* So^1, I thought of a little way we can just..^1. settle this./% // \E2* So^1, I thought of a little way we can just..^1. settle this./%
    if (global.flag[250] == 1)
    {
        global.fc = 2;
        global.fe = 3;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_233_0"); // * Why did you build another one just to blow it up?/ // * Why did you build another one just to blow it up?/ // * Why did you build another one just to blow it up?/ // * Why did you build another one just to blow it up?/
        scr_lanface(1, 3);
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_235_0"); // * It's funny!/ // * It's funny!/ // * It's funny!/ // * It's funny!/
        scr_ralface(3, 1);
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_237_0"); // * Well^1, in any case^1, you defeated us.../ // * Well^1, in any case^1, you defeated us.../ // * Well^1, in any case^1, you defeated us.../ // * Well^1, in any case^1, you defeated us.../
        global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_238_0"); // \E6* I suppose we can become bad guys now!/ // \E6* I suppose we can become bad guys now!/ // \E6* I suppose we can become bad guys now!/ // \E6* I suppose we can become bad guys now!/
        scr_susface(6, 0);
        global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_240_0"); // * Hey^1, not so fast!/ // * Hey^1, not so fast!/ // * Hey^1, not so fast!/ // * Hey^1, not so fast!/
        scr_lanface(8, 6);
        global.msg[9] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_242_0"); // * It's really boring if you just give up!!!/ // * It's really boring if you just give up!!!/ // * It's really boring if you just give up!!!/ // * It's really boring if you just give up!!!/
        global.msg[10] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_243_0"); // \E2* The LEAST you can do is show some resistance!/ // \E2* The LEAST you can do is show some resistance!/ // \E2* The LEAST you can do is show some resistance!/ // \E2* The LEAST you can do is show some resistance!/
        scr_susface(11, 2);
        global.msg[12] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_245_0"); // * Yeah^1, looks like we gotta teach you a lesson!/% // * Yeah^1, looks like we gotta teach you a lesson!/% // * Yeah^1, looks like we gotta teach you a lesson!/% // * Yeah^1, looks like we gotta teach you a lesson!/%
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 2;
        global.fe = 6;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_252_0"); // * Please just let us be bad guys./ // * Please just let us be bad guys./ // * Please just let us be bad guys./ // * Please just let us be bad guys./
        scr_susface(1, 7);
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_254_0"); // * No!!^1! Not until you stop wanting to!!!/ // * No!!^1! Not until you stop wanting to!!!/ // * No!!^1! Not until you stop wanting to!!!/ // * No!!^1! Not until you stop wanting to!!!/
        scr_ralface(3, "A");
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_256_0"); // * Fine!!^1! We don't want to be bad guys!!!/ // * Fine!!^1! We don't want to be bad guys!!!/ // * Fine!!^1! We don't want to be bad guys!!!/ // * Fine!!^1! We don't want to be bad guys!!!/
        scr_lanface(5, 3);
        global.msg[6] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_258_0"); // * Hear that^1, Susie???/% // * Hear that^1, Susie???/% // * Hear that^1, Susie???/% // * Hear that^1, Susie???/%
    }
    instance_create(0, 0, obj_dialoguer);
    con = 26;
}
if (con == 26 && !d_ex())
{
    with (s)
    {
        sprite_index = spr_susieb_attack;
        image_xscale = -2;
        x += 80;
    }
    snd_play(snd_laz_c);
    con = 27;
}
if (con == 27)
{
    with (s)
    {
        image_index += 0.2;
    }
    if (s.image_index >= 4)
    {
        con = 28;
        alarm[4] = 20;
    }
}
if (con == 29)
{
    lcon = 1;
    ltimer = 0;
    remlx = l.x;
    with (s)
    {
        sprite_index = spr_susie_enemy;
        image_xscale = 2;
        x -= 80;
    }
    global.fe = 2;
    global.fc = 1;
    global.typer = 30;
    global.msc = 450;
    scr_text(global.msc);
    if (global.flag[250] == 1)
    {
        global.fc = 2;
        global.fe = 9;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_302_0"); // * You're going to thrash us AGAIN!?/ // * You're going to thrash us AGAIN!?/ // * You're going to thrash us AGAIN!?/ // * You're going to thrash us AGAIN!?/
        scr_susface(1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_304_0"); // * Seems like it./% // * Seems like it./% // * Seems like it./% // * Seems like it./%
    }
    if (global.flag[250] >= 2)
    {
        global.fc = 1;
        global.fe = 2;
        global.typer = 30;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_312_0"); // * Sounds like we'll have to MAKE you be one then./ // * Sounds like we'll have to MAKE you be one then./ // * Sounds like we'll have to MAKE you be one then./ // * Sounds like we'll have to MAKE you be one then./
        scr_ralface(1, 6);
        global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_314_0"); // * That's completely unnecessary./ // * That's completely unnecessary./ // * That's completely unnecessary./ // * That's completely unnecessary./
        scr_lanface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_316_0"); // * I like the sound of that!!!/% // * I like the sound of that!!!/% // * I like the sound of that!!!/% // * I like the sound of that!!!/%
    }
    d_make();
    con = 30;
    choosetimer = 0;
}
if (lcon == 1)
{
    with (l)
    {
        x += 15;
    }
    if (l.x >= (raw_camerax() + global.widescreen_width))
    {
        with (l)
        {
            sprite_index = spr_lancerbike;
            image_speed = 0.1;
            y += 50;
        }
        lcon = 2;
    }
}
if (lcon == 2)
{
    with (l)
    {
        x -= 15;
    }
    if (l.x <= remlx)
    {
        l.x = remlx;
        lcon = 3;
    }
}
if (con == 30)
{
    if (instance_exists(obj_choicer_neo))
    {
        choosetimer += 1;
        if (choosetimer >= 30)
        {
            if (obj_choicer_neo.choiced == 0)
            {
                with (obj_choicer_neo)
                {
                    canchoose = 1;
                    mychoice = 1;
                    event_user(0);
                }
            }
            con = 31;
        }
    }
    if (!d_ex())
    {
        con = 31;
    }
}
if (con == 31 && !d_ex() && lcon == 3)
{
    global.flag[250] += 1;
    obj_mainchara.x = k.x;
    obj_mainchara.y = k.y;
    global.cinstance[0].x = r.x;
    global.cinstance[0].y = r.y;
    global.facing = 1;
    with (global.cinstance[0])
    {
        scr_caterpillar_interpolate();
    }
    scr_caterpillar_facing(global.facing);
    with (s)
    {
        visible = 0;
    }
    s.depth = 100;
    with (l)
    {
        visible = 0;
    }
    with (k)
    {
        visible = 0;
    }
    with (r)
    {
        visible = 0;
    }
    global.specialbattle = 0;
    global.flag[9] = 1;
    snd_play(snd_weaponpull);
    beaten = 1;
    global.specialbattle = 3;
    global.batmusic[0] = snd_init("lancerfight.ogg");
    bc = instance_create(0, 0, obj_battlecontroller);
    with (bc)
    {
        skipvictory = 1;
    }
    con = 35;
}
if (con == 35)
{
    var victory = false;
    with (obj_battlecontroller)
    {
        victory = victoried;
    }
    if (victory && s.visible == 0)
    {
        s.visible = 1;
        if (instance_exists(obj_susieenemy))
        {
            s.sprite_index = obj_susieenemy.thissprite;
            s.image_index = obj_susieenemy.siner / 6;
            s.image_speed = 0.16666666666666666;
            obj_susieenemy.x += room_width;
        }
        s.depth = l.depth + 20;
    }
    if (!instance_exists(obj_battlecontroller))
    {
        snd_free_all();
        with (s)
        {
            visible = 1;
        }
        with (l)
        {
            visible = 1;
        }
        con = 45;
        global.interact = 1;
    }
}
if (con == 45 && !d_ex())
{
    global.interact = 1;
    if (global.flag[249] == 0)
    {
        with (s)
        {
            sprite_index = spr_susie_enemy_defeat;
        }
    }
    lcon = 4;
    con = 46;
    alarm[4] = 30;
}
if (con == 46)
{
    global.interact = 1;
}
if (lcon == 4)
{
    with (l)
    {
        x += 15;
    }
    if (l.x >= (raw_camerax() + global.widescreen_width))
    {
        with (l)
        {
            sprite_index = spr_lancer_lt;
            image_speed = 0;
            y -= 50;
        }
        lcon = 5;
    }
}
if (lcon == 5)
{
    with (l)
    {
        x -= 15;
    }
    if (l.x <= remlx)
    {
        l.x = remlx;
        lcon = 6;
    }
}
if (con == 47 && lcon == 6)
{
    global.typer = 30;
    global.fe = 9;
    global.fc = 1;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_454_0"); // * Alright^1, alright^1, ENOUGH already!/ // * Alright^1, alright^1, ENOUGH already!/ // * Alright^1, alright^1, ENOUGH already!/ // * Alright^1, alright^1, ENOUGH already!/
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_455_0"); // \E1* Fine..^1. I GUESS I'll go back to being a good guy./ // \E1* Fine..^1. I GUESS I'll go back to being a good guy./ // \E1* Fine..^1. I GUESS I'll go back to being a good guy./ // \E1* Fine..^1. I GUESS I'll go back to being a good guy./
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_456_0"); // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./%
    if (global.flag[249] == 1)
    {
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_461_0"); // * Well^1, you didn't BEAT US^1, because you^1, uh.../ // * Well^1, you didn't BEAT US^1, because you^1, uh.../ // * Well^1, you didn't BEAT US^1, because you^1, uh.../ // * Well^1, you didn't BEAT US^1, because you^1, uh.../
        global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_462_0"); // * Kinda cheated by^1, uh^1, ganging up on Lancer^1, with^1, uh.../ // * Kinda cheated by^1, uh^1, ganging up on Lancer^1, with^1, uh.../ // * Kinda cheated by^1, uh^1, ganging up on Lancer^1, with^1, uh.../ // * Kinda cheated by^1, uh^1, ganging up on Lancer^1, with^1, uh.../
        scr_lanface(2, 3);
        global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_464_0"); // * Kindness./ // * Kindness./ // * Kindness./ // * Kindness./
        scr_susface(4, 0);
        global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_466_0"); // * But if I HAVE TO^1, I guess I'll go back to your side./ // * But if I HAVE TO^1, I guess I'll go back to your side./ // * But if I HAVE TO^1, I guess I'll go back to your side./ // * But if I HAVE TO^1, I guess I'll go back to your side./
        global.msg[6] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_467_0"); // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./% // \E4* But DON'T expect me to do anything but FIGHT./%
    }
    con = 48;
    instance_create(0, 0, obj_dialoguer);
}
if (con == 48 && !d_ex())
{
    with (s)
    {
        sprite_index = spr_susiel_dark_unhappy;
    }
    s.kx = k.x;
    s.ky = k.y;
    with (s)
    {
        scr_move_to_point_over_time(kx + 120, ky - 15, 60);
        image_speed = 0.2;
    }
    con = 49;
    alarm[4] = 60;
}
if (con == 50)
{
    with (s)
    {
        scr_halt();
    }
    global.typer = 31;
    global.fc = 2;
    global.fe = 6;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_489_0"); // * Well^1, we're happy to have you back^1, Susie./ // * Well^1, we're happy to have you back^1, Susie./ // * Well^1, we're happy to have you back^1, Susie./ // * Well^1, we're happy to have you back^1, Susie./
    scr_susface(1, 4);
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_491_0"); // * Yeah^1, yeah^1, let's just hurry up and go home./% // * Yeah^1, yeah^1, let's just hurry up and go home./% // * Yeah^1, yeah^1, let's just hurry up and go home./% // * Yeah^1, yeah^1, let's just hurry up and go home./%
    instance_create(0, 0, obj_dialoguer);
    con = 51;
}
if (con == 51 && !d_ex())
{
    with (s)
    {
        sprite_index = spr_susier_dark_unhappy;
    }
    with (l)
    {
        sprite_index = spr_lancer_lt_unhappy;
    }
    con = 52;
    alarm[4] = 20;
}
if (con == 53)
{
    global.typer = 32;
    global.fc = 5;
    global.fe = 6;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_509_0"); // * .../ // * .../ // * .../ // * .../
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_510_0"); // \E7* Ummm..^1. Susie?/ // \E7* Ummm..^1. Susie?/ // \E7* Ummm..^1. Susie?/ // \E7* Ummm..^1. Susie?/
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_511_0"); // \E4* Does this mean we..^1. aren't a team anymore?/% // \E4* Does this mean we..^1. aren't a team anymore?/% // \E4* Does this mean we..^1. aren't a team anymore?/% // \E4* Does this mean we..^1. aren't a team anymore?/%
    con = 54;
    instance_create(0, 0, obj_dialoguer);
}
if (con == 54 && !d_ex())
{
    with (s)
    {
        hspeed = -6;
        image_index = 1;
    }
    con = 55;
    alarm[4] = 4;
}
if (con == 56)
{
    with (s)
    {
        scr_halt();
    }
    con = 57;
    alarm[4] = 15;
}
if (con == 58)
{
    global.typer = 30;
    global.fc = 1;
    global.fe = 6;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_535_0"); // * H..^1. huh...^1? Umm^1, I mean^1, uhh.../% // * H..^1. huh...^1? Umm^1, I mean^1, uhh.../% // * H..^1. huh...^1? Umm^1, I mean^1, uhh.../% // * H..^1. huh...^1? Umm^1, I mean^1, uhh.../%
    d_make();
    con = 59;
}
if (con == 59 && !d_ex())
{
    with (s)
    {
        sprite_index = spr_susier_dark;
        image_speed = 0.2;
        hspeed = 6;
    }
    con = 60;
    alarm[4] = 8;
}
if (con == 61)
{
    with (s)
    {
        scr_halt();
    }
    global.fe = 2;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_551_0"); // * Of course we're still a team!/ // * Of course we're still a team!/ // * Of course we're still a team!/ // * Of course we're still a team!/
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_552_0"); // \E2* You can^1, um.../% // \E2* You can^1, um.../% // \E2* You can^1, um.../% // \E2* You can^1, um.../%
    d_make();
    con = 62;
}
if (con == 62 && !d_ex())
{
    with (s)
    {
        sprite_index = spr_susiel_dark_unhappy;
    }
    con = 63;
    alarm[4] = 30;
}
if (con == 64)
{
    with (s)
    {
        sprite_index = spr_susier_dark;
    }
    global.fe = 2;
    name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_568_0"); // Guys // Guys // Guys // Guys
    if (global.flag[214] == 1)
    {
        name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_569_0"); // The $!$? Squad // The $!$? Squad // The $!$? Squad // The $!$? Squad
    }
    if (global.flag[214] == 2)
    {
        name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_570_0"); // The Lancer Fan Club // The Lancer Fan Club // The Lancer Fan Club // The Lancer Fan Club
    }
    if (global.flag[214] == 3)
    {
        name = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_571_0"); // The Fun Gang // The Fun Gang // The Fun Gang // The Fun Gang
    }
    global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_573_0"), name); // * ... be part of the ~1!/ // * ... be part of the ~1!/ // * ... be part of the ~1!/ // * ... be part of the ~1!/
    scr_lanface(1, 3);
    global.msg[2] = scr_84_get_subst_string(scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_575_0"), name); // * Wow^1! Me...!^1? In the ~1!?/ // * Wow^1! Me...!^1? In the ~1!?/ // * Wow^1! Me...!^1? In the ~1!?/ // * Wow^1! Me...!^1? In the ~1!?/
    global.msg[3] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_576_0"); // \E7* Wait.../% // \E7* Wait.../% // \E7* Wait.../% // \E7* Wait.../%
    d_make();
    with (l)
    {
        sprite_index = spr_lancer_lt;
    }
    con = 65;
}
if (con == 65 && !d_ex())
{
    with (l)
    {
        sprite_index = spr_lancer_rt_unhappy;
    }
    global.fe = 4;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_586_0"); // * If I hang out with the good guys^1, then.../% // * If I hang out with the good guys^1, then.../% // * If I hang out with the good guys^1, then.../% // * If I hang out with the good guys^1, then.../%
    d_make();
    con = 66;
}
if (con == 66 && !d_ex())
{
    with (l)
    {
        sprite_index = spr_lancer_lt;
    }
    global.fe = 3;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_595_0"); // * Can we still have monogrammed track jackets?/ // * Can we still have monogrammed track jackets?/ // * Can we still have monogrammed track jackets?/ // * Can we still have monogrammed track jackets?/
    scr_susface(1, 2);
    global.msg[2] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_597_0"); // * Yeah^1!&* Ralsei will make them!/ // * Yeah^1!&* Ralsei will make them!/ // * Yeah^1!&* Ralsei will make them!/ // * Yeah^1!&* Ralsei will make them!/
    scr_ralface(3, 3);
    global.msg[4] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_599_0"); // * H..^1. Huh!?/ // * H..^1. Huh!?/ // * H..^1. Huh!?/ // * H..^1. Huh!?/
    global.msg[5] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_600_0"); // \E8* ... Okay^1, sure!/ // \E8* ... Okay^1, sure!/ // \E8* ... Okay^1, sure!/ // \E8* ... Okay^1, sure!/
    scr_lanface(6, 8);
    global.msg[7] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_602_0"); // * Ahahah!!^1!&* Lancer joins the team!!!/% // * Ahahah!!^1!&* Lancer joins the team!!!/% // * Ahahah!!^1!&* Lancer joins the team!!!/% // * Ahahah!!^1!&* Lancer joins the team!!!/%
    con = 67;
    d_make();
}
if (con == 67 && !d_ex())
{
    global.currentsong[0] = snd_init("fanfare.ogg");
    global.currentsong[1] = mus_play(global.currentsong[0]);
    global.fc = 0;
    global.typer = 52;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_615_0"); // * Lancer joined the party!/% // * Lancer joined the party!/% // * Lancer joined the party!/% // * Lancer joined the party!/%
    d = instance_create(0, 0, obj_dialoguer);
    d.skippable = 0;
    con = 70;
}
if (con == 9999)
{
    snd_free_all();
    with (obj_dialoguer)
    {
        instance_destroy();
    }
    with (obj_writer)
    {
        instance_destroy();
    }
    global.typer = 30;
    global.fe = 8;
    global.fc = 1;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_629_0"); // * No./% // * No./% // * No./% // * No./%
    instance_create(0, 0, obj_dialoguer);
    con = 70;
}
if (con == 70 && !d_ex())
{
    snd_free_all();
    obj_mainchara.x = k.x;
    obj_mainchara.y = k.y;
    scon = 1;
    lcon = 20;
    with (obj_mainchara)
    {
        visible = 1;
    }
    with (k)
    {
        visible = 0;
    }
    if (global.plot < 130)
    {
        global.plot = 130;
    }
    con = 71;
    scr_pan_to_obj(obj_mainchara, 50);
    alarm[4] = 52;
}
if (scon == 1)
{
    with (s)
    {
        sprite_index = spr_susiel_dark;
        image_index += 0.2;
        x -= 10;
    }
    if (s.x <= (r.x - 50))
    {
        scr_losechar();
        scr_getchar(3);
        scr_getchar(2);
        s.visible = 0;
        global.cinstance[1] = instance_create(s.x, s.y, obj_caterpillarchara);
        global.cinstance[1].target = 24;
        scon = 2;
    }
}
if (lcon == 20)
{
    l.sprite_index = spr_lancer_lt;
    l.x -= 15;
    l.y += 0.5;
    if (l.x <= (r.x - 120))
    {
        lcon = 21;
    }
}
if (lcon == 21)
{
    npc = instance_create(l.x, l.y, obj_npc_room);
    npc.sprite_index = spr_lancer_rt;
    lcon = 22;
    global.flag[229] = 1;
    with (l)
    {
        visible = 0;
    }
}
if (con == 72)
{
    savepoint = instance_create(640, 80, obj_savepoint);
    with (r)
    {
        visible = 0;
    }
    global.cinstance[0].x = r.x;
    global.cinstance[0].y = r.y;
    with (global.cinstance[0])
    {
        visible = 1;
        scr_caterpillar_interpolate();
    }
    with (global.cinstance[1])
    {
        visible = 1;
        scr_caterpillar_interpolate();
    }
    scr_caterpillar_facing(1);
    with (obj_mainchara)
    {
        cutscene = 0;
    }
    global.interact = 0;
    global.facing = 0;
    scr_tempsave();
    con = 99;
}
if (global.plot < 150 && con == 99 && global.interact == 0 && obj_mainchara.x <= 80)
{
    obj_mainchara.x = 82;
    global.interact = 1;
    global.typer = 31;
    global.fc = 2;
    global.fe = 1;
    global.msg[0] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_712_0"); // * Kris^1, we're getting close to the Fountain.../ // * Kris^1, we're getting close to the Fountain.../ // * Kris^1, we're getting close to the Fountain.../ // * Kris^1, we're getting close to the Fountain.../
    global.msg[1] = scr_84_get_lang_string("obj_susieandlancer_event_slash_Step_0_gml_713_0"); // \E8* Let's not turn back now./% // \E8* Let's not turn back now./% // \E8* Let's not turn back now./% // \E8* Let's not turn back now./%
    instance_create(0, 0, obj_dialoguer);
    con = 100;
}
if (con == 100 && !d_ex())
{
    con = 99;
    global.interact = 0;
}
