if (con < 40)
{
    if (con == 2)
    {
        xx = camerax();
        yy = cameray();
        with (k)
        {
            scr_halt();
        }
        with (s)
        {
            scr_halt();
        }
        con = 3;
        alarm[4] = 30;
    }
    if (con == 4)
    {
        with (obj_mainchara)
        {
            cutscene = 1;
        }
        global.fe = 0;
        global.fc = 1;
        global.typer = 30;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_20_0"); // * A castle...?/ // * A castle...?/ // * A castle...?/
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_21_0"); // * Why the hell is there a castle inside a supply closet...?/% // * Why the hell is there a castle inside a supply closet...?/% // * Why the hell is there a castle inside a supply closet...?/%
        con = 5;
        instance_create(0, 0, obj_dialoguer);
    }
    if (con == 5 && d_ex() == 0)
    {
        con = 6;
        global.fc = 0;
        global.typer = 42;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_32_0"); // Welcome^1, heroes...!/% // Welcome^1, heroes...!/% // Welcome^1, heroes...!/%
        wr = instance_create(xx + 200, yy + 100, obj_writer);
        if (scr_debug() == 0)
        {
            with (wr)
            {
                skippable = 0;
            }
        }
    }
    if (con == 6)
    {
        if (instance_exists(wr) == false)
        {
            global.fe = 9;
            global.fc = 1;
            global.typer = 30;
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_46_0"); // * Who's there!?/% // * Who's there!?/% // * Who's there!?/%
            con = 7;
            instance_create(0, 0, obj_dialoguer);
        }
    }
    if (con == 7 && d_ex() == 0)
    {
        global.fc = 0;
        con = 8;
        global.typer = 42;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_58_0"); // Do not be alarmed..^1.&I am not your enemy./ // Do not be alarmed..^1.&I am not your enemy./ // Do not be alarmed..^1.&I am not your enemy./
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_59_0"); // Please come forward^1,&both of you.../% // Please come forward^1,&both of you.../% // Please come forward^1,&both of you.../%
        wr = instance_create(xx + 200, yy + 100, obj_writer);
        if (scr_debug() == 0)
        {
            with (wr)
            {
                skippable = 0;
            }
        }
    }
    if (con == 8)
    {
        if (instance_exists(wr) == false)
        {
            r = scr_dark_marker(495, 310, spr_ralsei_hood);
            with (r)
            {
                depth = 100;
            }
            with (s)
            {
                vspeed = -4;
                image_speed = 0.1;
            }
            with (k)
            {
                vspeed = -4;
                image_speed = 0.1;
            }
            scr_pan(0, -4, 70);
            con = 9;
            alarm[4] = 85;
        }
    }
    if (con == 10)
    {
        with (k)
        {
            scr_halt();
        }
        with (s)
        {
            scr_halt();
        }
        con = 11;
        alarm[4] = 30;
    }
    if (con == 12)
    {
        global.typer = 6;
        global.fc = 2;
        global.fe = 0;
        global.flag[30] = 1;
        global.msc = 120;
        scr_text(global.msc);
        con = 20;
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
    }
    if (con == 20 && d_ex() == 0)
    {
        fade = instance_create(0, 0, obj_fadeout);
        with (fade)
        {
            fadespeed = 0.01;
        }
        con = 21;
        alarm[4] = 100;
    }
    if (con == 22)
    {
        room_persistent = 1;
        con = 24;
        alarm[4] = 2;
    }
    if (con == 25)
    {
        instance_create(0, 0, obj_persistentfadein);
        room_goto(room_legend);
        global.plot = 20;
        con = 26;
        alarm[4] = 3;
    }
    if (con == 27)
    {
        global.plot = 21;
        room_persistent = 0;
        con = 28;
        alarm[4] = 60;
    }
    if (con == 29)
    {
        global.fc = 2;
        global.fe = 0;
        global.typer = 6;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_142_0"); // * Kris^1, Susie..^1.&* Thank you for listening to my long tale./ // * Kris^1, Susie..^1.&* Thank you for listening to my long tale./ // * Kris^1, Susie..^1.&* Thank you for listening to my long tale./
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_143_0"); // * I deeply believe you two are the \cYHEROES\cW of the \cYLEGEND\cW./ // * I deeply believe you two are the \cYHEROES\cW of the \cYLEGEND\cW./ // * I deeply believe you two are the \cYHEROES\cW of the \cYLEGEND\cW./
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_144_0"); // * That despite whatever enemies you may face.../ // * That despite whatever enemies you may face.../ // * That despite whatever enemies you may face.../
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_145_0"); // * ... You two have the \cYCOURAGE\cW to \cYSAVE THE WORLD\cW./ // * ... You two have the \cYCOURAGE\cW to \cYSAVE THE WORLD\cW./ // * ... You two have the \cYCOURAGE\cW to \cYSAVE THE WORLD\cW./
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_146_0"); // * \cYDELTA WARRIORS\cW!^1 &* Please^1, won't you accept your destiny...?/% // * \cYDELTA WARRIORS\cW!^1 &* Please^1, won't you accept your destiny...?/% // * \cYDELTA WARRIORS\cW!^1 &* Please^1, won't you accept your destiny...?/%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 35;
    }
    if (con == 30 && d_ex() == 1)
    {
        if (scr_getmsgno() == 17)
        {
            with (s)
            {
                sprite_index = spr_susier_dark;
            }
        }
        if (scr_getmsgno() == 18)
        {
            with (s)
            {
                sprite_index = spr_susied_dark;
            }
        }
    }
    if (con == 30 && d_ex() == 0)
    {
        con = 40;
    }
    if (con == 35 && d_ex() == 0)
    {
        with (s)
        {
            sprite_index = spr_susier_dark;
        }
        con = 36;
        alarm[4] = 50;
    }
    if (con == 37)
    {
        with (s)
        {
            sprite_index = spr_susieu_dark;
        }
        global.typer = 30;
        global.fe = 0;
        global.fc = 1;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_181_0"); // * Uhhh..^3.&* Nah./ // * Uhhh..^3.&* Nah./ // * Uhhh..^3.&* Nah./
        scr_ralface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_183_0"); // * W... what?/ // * W... what?/ // * W... what?/
        scr_susface(3, 0);
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_185_0"); // * Me^1?&* Some kind of hero or something...?/ // * Me^1?&* Some kind of hero or something...?/ // * Me^1?&* Some kind of hero or something...?/
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_186_0"); // \E2* You've got the wrong person./ // \E2* You've got the wrong person./ // \E2* You've got the wrong person./
        scr_ralface(6, 1);
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_188_0"); // * B-but Susie^1, without you^1, the...&* The world will.../ // * B-but Susie^1, without you^1, the...&* The world will.../ // * B-but Susie^1, without you^1, the...&* The world will.../
        scr_susface(8, 0);
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_190_0"); // * So what?&* If the world gets destroyed.../ // * So what?&* If the world gets destroyed.../ // * So what?&* If the world gets destroyed.../
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_191_0"); // \E1* It's none of my damn business./ // \E1* It's none of my damn business./ // \E1* It's none of my damn business./
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_192_0"); // \E2* Might even be kind of fun, honestly./ // \E2* Might even be kind of fun, honestly./ // \E2* Might even be kind of fun, honestly./
        scr_ralface(12, 0);
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_194_0"); // * .../ // * .../ // * .../
        scr_susface(14, 0);
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_196_0"); // * Anyway^1, Kris.../ // * Anyway^1, Kris.../ // * Anyway^1, Kris.../
        global.msg[16] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_197_0"); // \E0* If YOU wanna play pretend with this weirdo.../ // \E0* If YOU wanna play pretend with this weirdo.../ // \E0* If YOU wanna play pretend with this weirdo.../
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_198_0"); // \E1* Stick around./ // \E1* Stick around./ // \E1* Stick around./
        global.msg[18] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_199_0"); // \E2* I'M going to find a way out of here./ // \E2* I'M going to find a way out of here./ // \E2* I'M going to find a way out of here./
        scr_ralface(19, 1);
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_201_0"); // * Susie..^1.&* Wait!/% // * Susie..^1.&* Wait!/% // * Susie..^1.&* Wait!/%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 38;
    }
    if (con == 38 && d_ex() == 1)
    {
        if (scr_getmsgno() == 0)
        {
            with (s)
            {
                sprite_index = spr_susieu_dark;
            }
        }
        if (scr_getmsgno() == 9)
        {
            with (s)
            {
                sprite_index = spr_susier_dark;
            }
        }
        if (scr_getmsgno() == 13)
        {
            with (s)
            {
                sprite_index = spr_susieu_dark;
            }
        }
        if (scr_getmsgno() == 15)
        {
            with (s)
            {
                sprite_index = spr_susiel_dark;
            }
        }
        if (scr_getmsgno() == 18)
        {
            with (s)
            {
                sprite_index = spr_susied_dark;
            }
        }
    }
    if (con == 38 && d_ex() == 0)
    {
        con = 40;
    }
}
else
{
    if (con == 40 && d_ex() == 0)
    {
        with (s)
        {
            sprite_index = spr_susieu_dark;
        }
        snd_play(snd_lancerlaugh);
        con = 44;
        alarm[4] = 50;
    }
    if (con == 45)
    {
        snd_play(snd_drive);
        xx = camerax();
        yy = cameray();
        l = scr_dark_marker(xx + 720, (r.y + r.sprite_height) - 10, spr_lancerbike);
        with (l)
        {
            hspeed = -32;
        }
        con = 46;
    }
    if (con == 46)
    {
        if (l.x <= (xx + 360))
        {
            ex = instance_create(r.x + 30, r.y + 30, obj_animation);
            ex.sprite_index = spr_realisticexplosion;
            ex.image_xscale = 2;
            ex.image_yscale = 2;
            ex.image_speed = 0.5;
            ex.depth = 10;
            global.currentsong[0] = snd_init("lancer.ogg");
            with (l)
            {
                hspeed = 0;
            }
            with (r)
            {
                hspeed = -32;
                vspeed = -8;
                gravity = 0.2;
            }
            rflip = 1;
            snd_play(snd_badexplosion);
            instance_create(0, 0, obj_shake);
            con = 47;
            alarm[4] = 60;
        }
    }
    if (con == 48)
    {
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
        con = 49;
        global.fc = 5;
        global.fe = 1;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_276_0"); // * Ho ho ho!/ // * Ho ho ho!/ // * Ho ho ho!/
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_277_0"); // \E0* The heroes are already running away.../ // \E0* The heroes are already running away.../ // \E0* The heroes are already running away.../
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_278_0"); // \E1* And they didn't even know I was here./ // \E1* And they didn't even know I was here./ // \E1* And they didn't even know I was here./
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_279_0"); // \E3* My dad's gonna make me Son of the Month!/ // \E3* My dad's gonna make me Son of the Month!/ // \E3* My dad's gonna make me Son of the Month!/
        scr_susface(4, 9);
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_281_0"); // * Who the hell are you!?/ // * Who the hell are you!?/ // * Who the hell are you!?/
        scr_lanface(6, 0);
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_283_0"); // * I'm...!/% // * I'm...!/% // * I'm...!/%
        if (global.flag[203] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_287_0"); // * Ho ho ho^1!&* One nerd down^1, two to go!/ // * Ho ho ho^1!&* One nerd down^1, two to go!/ // * Ho ho ho^1!&* One nerd down^1, two to go!/
            global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_288_0"); // \E3* My dad's gonna make me Son of the Month!/ // \E3* My dad's gonna make me Son of the Month!/ // \E3* My dad's gonna make me Son of the Month!/
            scr_susface(2, 9);
            global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_290_0"); // * Who the hell are you!?/ // * Who the hell are you!?/ // * Who the hell are you!?/
            scr_lanface(4, 0);
            global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_292_0"); // * I'm...!/% // * I'm...!/% // * I'm...!/%
        }
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
    }
    if (con == 49 && d_ex() == 0)
    {
        con = 50;
        snd_play(snd_lancerwhistle);
        with (l)
        {
            sprite_index = spr_lancerbike_l;
        }
        siner = 0;
        maxamt = 20;
    }
    if (con == 50)
    {
        siner += 1;
        l.image_xscale = 2 * cos((siner * 2 * pi) / maxamt);
        if (siner >= maxamt)
        {
            con = 51;
            if (global.flag[203] == 1)
            {
                con = 54;
            }
            l.image_xscale = 2;
            alarm[4] = 15;
        }
    }
    if (con == 52)
    {
        with (l)
        {
            sprite_index = spr_lancerbike;
        }
        global.fe = 1;
        global.fc = 5;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_327_0"); // * The bad guy./ // * The bad guy./ // * The bad guy./
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_328_0"); // \E0* You \cYCLOWNS\cW want to seal our \cYDARK FOUNTAIN\cW, huh!?/ // \E0* You \cYCLOWNS\cW want to seal our \cYDARK FOUNTAIN\cW, huh!?/ // \E0* You \cYCLOWNS\cW want to seal our \cYDARK FOUNTAIN\cW, huh!?/
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_329_0"); // \E2* And ^2- STILL picturing you guys as \cYCLOWNS\cW -/ // \E2* And ^2- STILL picturing you guys as \cYCLOWNS\cW -/ // \E2* And ^2- STILL picturing you guys as \cYCLOWNS\cW -/
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_330_0"); // \E0* Save the world from ETERNAL DARKNESS, huh!?/ // \E0* Save the world from ETERNAL DARKNESS, huh!?/ // \E0* Save the world from ETERNAL DARKNESS, huh!?/
        scr_susface(4, 0);
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_332_0"); // \E0* Eh./ // \E0* Eh./ // \E0* Eh./
        scr_lanface(6, 1);
        global.msg[7] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_334_0"); // * Don't try to deny it...!/ // * Don't try to deny it...!/ // * Don't try to deny it...!/
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_335_0"); // \E0* We both know you'll go \cYEAST\cW!/ // \E0* We both know you'll go \cYEAST\cW!/ // \E0* We both know you'll go \cYEAST\cW!/
        global.msg[9] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_336_0"); // * It's your only way home!/ // * It's your only way home!/ // * It's your only way home!/
        global.msg[10] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_337_0"); // \E2* But^1, I^1, LANCER^1, won't let you go there!/ // \E2* But^1, I^1, LANCER^1, won't let you go there!/ // \E2* But^1, I^1, LANCER^1, won't let you go there!/
        global.msg[11] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_338_0"); // \E0* And I've got a flawless two step plan to ensure it./ // \E0* And I've got a flawless two step plan to ensure it./ // \E0* And I've got a flawless two step plan to ensure it./
        global.msg[12] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_339_0"); // \E2* Step one^3.&* I thrash you./ // \E2* Step one^3.&* I thrash you./ // \E2* Step one^3.&* I thrash you./
        global.msg[13] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_340_0"); // \E1* Step two^3.&* You lose!/ // \E1* Step two^3.&* You lose!/ // \E1* Step two^3.&* You lose!/
        scr_susface(14, 1);
        global.msg[15] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_342_0"); // \E1* Hmm^2. Nice plan^1, kid./ // \E1* Hmm^2. Nice plan^1, kid./ // \E1* Hmm^2. Nice plan^1, kid./
        scr_lanface(16, 6);
        global.msg[17] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_344_0"); // \E6* R-really...?/ // \E6* R-really...?/ // \E6* R-really...?/
        scr_susface(18, 2);
        global.msg[19] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_346_0"); // \E2* Yeah, actually.../ // \E2* Yeah, actually.../ // \E2* Yeah, actually.../
        global.msg[20] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_347_0"); // \E3* Mind if we use it on you instead?/% // \E3* Mind if we use it on you instead?/% // \E3* Mind if we use it on you instead?/%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 70;
    }
    if (con == 55)
    {
        with (l)
        {
            sprite_index = spr_lancerbike;
        }
        global.fc = 5;
        global.fe = 1;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_360_0"); // * The bad guy./ // * The bad guy./ // * The bad guy./
        scr_susface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_362_0"); // \E0* "Bad guy?"/ // \E0* "Bad guy?"/ // \E0* "Bad guy?"/
        scr_lanface(3, 0);
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_364_0"); // \E6* You know^2.&* Teardrop-headed kid^2.&* From the legend?/ // \E6* You know^2.&* Teardrop-headed kid^2.&* From the legend?/ // \E6* You know^2.&* Teardrop-headed kid^2.&* From the legend?/
        scr_susface(5, 1);
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_366_0"); // \E1* ... No?/ // \E1* ... No?/ // \E1* ... No?/
        scr_lanface(7, 4);
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_368_0"); // \E4* Aw boy^2.&* This is gonna be hard to explain./% // \E4* Aw boy^2.&* This is gonna be hard to explain./% // \E4* Aw boy^2.&* This is gonna be hard to explain./%
        d = instance_create(0, 0, obj_dialoguer);
        with (d)
        {
            side = 1;
        }
        con = 56;
    }
    if (con == 56 && d_ex() == 0)
    {
        r2 = scr_dark_marker(xx - 60, yy + 80, spr_ralsei_hood);
        with (r2)
        {
            hspeed = 16;
        }
        con = 57;
        alarm[4] = 15;
    }
    if (con == 58)
    {
        global.typer = 6;
        with (r2)
        {
            hspeed = 0;
        }
        global.fc = 2;
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_388_0"); // * Umm..^1.&* I could help explain it...!/ // * Umm..^1.&* I could help explain it...!/ // * Umm..^1.&* I could help explain it...!/
        scr_lanface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_390_0"); // \E0* Stay out of this^2, kindboy!/ // \E0* Stay out of this^2, kindboy!/ // \E0* Stay out of this^2, kindboy!/
        scr_ralface(3, 0);
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_392_0"); // \E0* No^1!&* I'll protect the heroes with my life!/ // \E0* No^1!&* I'll protect the heroes with my life!/ // \E0* No^1!&* I'll protect the heroes with my life!/
        scr_susface(5, 0);
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_394_0"); // \E0* Actually^1, can you hold off?&* I wanna hear this kid./% // \E0* Actually^1, can you hold off?&* I wanna hear this kid./% // \E0* Actually^1, can you hold off?&* I wanna hear this kid./%
        d = instance_create(0, 0, obj_dialoguer);
        with (d)
        {
            side = 1;
        }
        con = 59;
    }
    if (con == 59 && d_ex() == 0)
    {
        with (r2)
        {
            hspeed = -8;
        }
        con = 60;
        alarm[4] = 30;
    }
    if (con == 61)
    {
        global.fc = 5;
        global.fe = 6;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_412_0"); // \E6* OK^1, so^1, long story short^2.&* You guys are heroes./ // \E6* OK^1, so^1, long story short^2.&* You guys are heroes./ // \E6* OK^1, so^1, long story short^2.&* You guys are heroes./
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_413_0"); // * You wanna go EAST^2, and seal our DARK FOUNTAIN./ // * You wanna go EAST^2, and seal our DARK FOUNTAIN./ // * You wanna go EAST^2, and seal our DARK FOUNTAIN./
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_414_0"); // \E6* That'll stop darkness from covering the world./ // \E6* That'll stop darkness from covering the world./ // \E6* That'll stop darkness from covering the world./
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_415_0"); // * We^2, on the other hand^2, don't want that^2, because:/ // * We^2, on the other hand^2, don't want that^2, because:/ // * We^2, on the other hand^2, don't want that^2, because:/
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_416_0"); // \E1* It would rule^2, and be great./ // \E1* It would rule^2, and be great./ // \E1* It would rule^2, and be great./
        scr_susface(5, 2);
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_418_0"); // \E2* Wait^2, why DO we want to stop that?/ // \E2* Wait^2, why DO we want to stop that?/ // \E2* Wait^2, why DO we want to stop that?/
        scr_lanface(7, 7);
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_420_0"); // \E7* Uhh^1, I dunno..^2.&* I guess I could go ask my dad?/% // \E7* Uhh^1, I dunno..^2.&* I guess I could go ask my dad?/% // \E7* Uhh^1, I dunno..^2.&* I guess I could go ask my dad?/%
        d = instance_create(0, 0, obj_dialoguer);
        with (d)
        {
            side = 1;
        }
        con = 62;
    }
    if (con == 62 && d_ex() == 0)
    {
        r3 = scr_dark_marker(xx - 60, yy + 80, spr_ralsei_hood);
        with (r3)
        {
            hspeed = 16;
        }
        con = 63;
        alarm[4] = 15;
    }
    if (con == 64)
    {
        with (r3)
        {
            hspeed = 0;
        }
        global.typer = 6;
        global.fc = 2;
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_440_0"); // * I could tell you!/ // * I could tell you!/ // * I could tell you!/
        scr_susface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_442_0"); // * We GOT this./% // * We GOT this./% // * We GOT this./%
        d = instance_create(0, 0, obj_dialoguer);
        with (d)
        {
            side = 1;
        }
        con = 65;
    }
    if (con == 65 && d_ex() == 0)
    {
        with (r3)
        {
            hspeed = -8;
        }
        con = 66;
        alarm[4] = 40;
    }
    if (con == 67)
    {
        global.typer = 30;
        global.fc = 1;
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_460_0"); // \E1* So the POINT is^2, you wanna fight us?/ // \E1* So the POINT is^2, you wanna fight us?/ // \E1* So the POINT is^2, you wanna fight us?/
        scr_lanface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_462_0"); // \E1* Correct-a-mundo!/ // \E1* Correct-a-mundo!/ // \E1* Correct-a-mundo!/
        scr_susface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_464_0"); // \E2* Arright^1, kid.../ // \E2* Arright^1, kid.../ // \E2* Arright^1, kid.../
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_465_0"); // \E3* NOW you're telling me something I understand./% // \E3* NOW you're telling me something I understand./% // \E3* NOW you're telling me something I understand./%
        d = instance_create(0, 0, obj_dialoguer);
        with (d)
        {
            side = 1;
        }
        con = 70;
    }
    if (con == 72)
    {
        global.flag[9] = 1;
        global.batmusic[0] = snd_init("battle.ogg");
        global.encounterno = 2;
        global.specialbattle = 3;
        scr_getchar(2);
        obj_mainchara.x = k.x;
        obj_mainchara.y = k.y;
        global.cinstance[0] = instance_create(s.x, s.y, obj_caterpillarchara);
        with (k)
        {
            instance_destroy();
        }
        with (s)
        {
            instance_destroy();
        }
        instance_create(0, 0, obj_encounterbasic);
        con = 73;
        with (l)
        {
            direction = point_direction(x, y, global.monstermakex[0], global.monstermakey[0]);
            speed = point_distance(x, y, global.monstermakex[0], global.monstermakey[0]) / 10;
        }
        alarm[4] = 10;
    }
    if (con == 70 && d_ex() == 0)
    {
        snd_free_all();
        con = 71;
        alarm[4] = 2;
    }
    if (con == 74)
    {
        with (l)
        {
            speed = 0;
        }
        if (instance_exists(obj_battlecontroller))
        {
            with (l)
            {
                instance_destroy();
            }
            con = 75;
        }
    }
    if (con == 75)
    {
        if (global.plot == 22)
        {
            if (instance_exists(obj_battlecontroller) == false)
            {
                if (instance_exists(obj_endbattle) == false)
                {
                    con = 76;
                }
            }
            alarm[4] = 5;
        }
    }
    if (con == 77)
    {
        rflip = 0;
        global.interact = 1;
        k = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_krisu_dark);
        s = scr_dark_marker(global.cinstance[0].x, global.cinstance[0].y, spr_susieu_dark);
        k.depth = 6000;
        s.depth = 6000;
        with (obj_mainchara)
        {
            visible = 0;
        }
        with (global.cinstance[0])
        {
            instance_destroy();
        }
        con = 78;
        alarm[4] = 15;
    }
    if (con == 79)
    {
        r = scr_dark_marker(95, 310, spr_ralsei_hood);
        r.hspeed = 16;
        con = 80;
        alarm[4] = 25;
    }
    if (con == 81)
    {
        with (r)
        {
            speed = 0;
        }
        global.fc = 2;
        global.fe = 1;
        global.typer = 6;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_552_0"); // * Are you two OK...?/% // * Are you two OK...?/% // * Are you two OK...?/%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 82;
    }
    if (con == 82 && d_ex() == 0)
    {
        with (r)
        {
            vspeed = 6;
        }
        with (r)
        {
            depth = 1000;
        }
        con = 83;
        alarm[4] = 10;
    }
    if (con == 84)
    {
        with (r)
        {
            vspeed = 0;
        }
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_569_0"); // * Um^1, allow me to introduce myself more properly^1, I am.../ // * Um^1, allow me to introduce myself more properly^1, I am.../ // * Um^1, allow me to introduce myself more properly^1, I am.../
        scr_susface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_571_0"); // * Jeez^1, can you take off that hood?/ // * Jeez^1, can you take off that hood?/ // * Jeez^1, can you take off that hood?/
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_572_0"); // * I can barely hear you under there./ // * I can barely hear you under there./ // * I can barely hear you under there./
        scr_ralface(4, 0);
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_574_0"); // * U-ummm^1, alright.../% // * U-ummm^1, alright.../% // * U-ummm^1, alright.../%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 85;
    }
    if (con == 85 && d_ex() == 0)
    {
        snd_play(snd_noise);
        with (r)
        {
            sprite_index = spr_ralsei_removehood;
            image_index = 0;
            image_speed = 0.1;
        }
        con = 86;
        alarm[4] = 60;
    }
    if (con == 87)
    {
        with (r)
        {
            sprite_index = spr_ralseid;
            image_index = 0;
            image_speed = 0;
        }
        global.flag[30] = 0;
        con = 88;
        alarm[4] = 30;
    }
    if (con == 89)
    {
        global.typer = 31;
        global.fc = 2;
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_611_0"); // * Hello everyone^1.&* I'm Ralsei./ // * Hello everyone^1.&* I'm Ralsei./ // * Hello everyone^1.&* I'm Ralsei./
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_612_0"); // \E0* Kris, Susie..^2.&* It's ever so wonderful to meet you!/ // \E0* Kris, Susie..^2.&* It's ever so wonderful to meet you!/ // \E0* Kris, Susie..^2.&* It's ever so wonderful to meet you!/
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_613_0"); // \E8* I'm certain we're going to become great friends^2, and,/ // \E8* I'm certain we're going to become great friends^2, and,/ // \E8* I'm certain we're going to become great friends^2, and,/
        scr_susface(3, 0);
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_615_0"); // \E0* Best way to leave is East^2, right?/ // \E0* Best way to leave is East^2, right?/ // \E0* Best way to leave is East^2, right?/
        scr_ralface(5, 0);
        global.msg[6] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_617_0"); // \E0* Yes^2!&* That's where we'll.../ // \E0* Yes^2!&* That's where we'll.../ // \E0* Yes^2!&* That's where we'll.../
        scr_susface(7, 0);
        global.msg[8] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_619_0"); // \E0* Got it./% // \E0* Got it./% // \E0* Got it./%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 90;
    }
    if (con == 90 && d_ex() == 0)
    {
        with (s)
        {
            sprite_index = spr_susier_dark;
        }
        con = 91;
        alarm[4] = 40;
    }
    if (con == 92)
    {
        with (k)
        {
            sprite_index = spr_krisr_dark;
        }
        global.fc = 1;
        global.fe = 2;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_637_0"); // * See ya at school^1, Kris./% // * See ya at school^1, Kris./% // * See ya at school^1, Kris./%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 93;
    }
    if (con == 93 && d_ex() == 0)
    {
        with (k)
        {
            sprite_index = spr_krisd_dark;
        }
        with (s)
        {
            vspeed = 4;
            image_speed = 0.2;
            sprite_index = spr_susied_dark;
        }
        con = 94;
        alarm[4] = 70;
    }
    if (con == 95)
    {
        with (k)
        {
            sprite_index = spr_krisu_dark;
        }
        global.typer = 31;
        global.fc = 2;
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_663_0"); // * Umm.../ // * Umm.../ // * Umm.../
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_664_0"); // \E6* I suppose it's just the two of us^1, then.../% // \E6* I suppose it's just the two of us^1, then.../% // \E6* I suppose it's just the two of us^1, then.../%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 96;
    }
    if (con == 96 && d_ex() == 0)
    {
        with (k)
        {
            sprite_index = spr_krisr_dark;
        }
        with (r)
        {
            hspeed = 1;
            vspeed = 2;
            image_speed = 0.2;
        }
        con = 97;
    }
    if (con == 97)
    {
        if (r.y >= (k.y - 12))
        {
            r.y = k.y - 12;
            r.image_speed = 0;
            r.image_index = 0;
            r.sprite_index = spr_ralseil;
            r.speed = 0;
            r.vspeed = 0;
            r.hspeed = 0;
            con = 98;
            alarm[4] = 30;
        }
    }
    if (con == 99)
    {
        global.fe = 5;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_702_0"); // \E5* Kris^1, I'm a \cYPRINCE\cW, but.../ // \E5* Kris^1, I'm a \cYPRINCE\cW, but.../ // \E5* Kris^1, I'm a \cYPRINCE\cW, but.../
        global.msg[1] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_703_0"); // \E6* I^1, um^1, currently don't have any subjects./ // \E6* I^1, um^1, currently don't have any subjects./ // \E6* I^1, um^1, currently don't have any subjects./
        global.msg[2] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_704_0"); // \E5* I've been waiting alone here.../ // \E5* I've been waiting alone here.../ // \E5* I've been waiting alone here.../
        global.msg[3] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_705_0"); // \E6* Um..^1. My whole life for you two to arrive./ // \E6* Um..^1. My whole life for you two to arrive./ // \E6* Um..^1. My whole life for you two to arrive./
        global.msg[4] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_706_0"); // \E0* So..^2.&* I'm really happy to meet you./ // \E0* So..^2.&* I'm really happy to meet you./ // \E0* So..^2.&* I'm really happy to meet you./
        global.msg[5] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_707_0"); // \E8* I hope we can be good friends^2, Kris./% // \E8* I hope we can be good friends^2, Kris./% // \E8* I hope we can be good friends^2, Kris./%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 100;
    }
    if (con == 100 && d_ex() == 0)
    {
        with (r)
        {
            sprite_index = spr_ralseid;
        }
        con = 101;
        alarm[4] = 40;
    }
    if (con == 102)
    {
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_723_0"); // * Let's try to find Susie^1.&* She must be to the southeast./% // * Let's try to find Susie^1.&* She must be to the southeast./% // * Let's try to find Susie^1.&* She must be to the southeast./%
        d = instance_create(0, 0, obj_dialoguer);
        d.side = 1;
        con = 103;
    }
    if (con == 103 && d_ex() == 0)
    {
        with (r)
        {
            hspeed = -4;
            image_speed = 0.2;
            sprite_index = spr_ralseil;
        }
        con = 104;
    }
    if (con == 104)
    {
        if (r.x <= (k.x - 70))
        {
            with (r)
            {
                scr_halt();
            }
            with (r)
            {
                sprite_index = spr_ralseir;
            }
            con = 105;
            global.fe = 8;
            global.msg[0] = scr_84_get_lang_string("obj_darkcastle_event_slash_Step_0_gml_749_0"); // * You can lead the way^1, Kris!/% // * You can lead the way^1, Kris!/% // * You can lead the way^1, Kris!/%
            d = instance_create(0, 0, obj_dialoguer);
            d.side = 1;
        }
    }
    if (con == 105 && d_ex() == 0)
    {
        con = 107;
        global.currentsong[0] = snd_init("castletown_empty.ogg");
        alarm[4] = 30;
        scr_pan_to_obj(obj_mainchara, 25);
        global.facing = 0;
        with (k)
        {
            sprite_index = spr_krisd_dark;
        }
    }
    if (con == 109)
    {
        with (r)
        {
            instance_destroy();
        }
        con = 110;
        instance_destroy();
    }
    if (con == 108)
    {
        scr_losechar();
        scr_getchar(3);
        global.facing = 0;
        obj_mainchara.visible = 1;
        obj_mainchara.cutscene = 0;
        with (k)
        {
            instance_destroy();
        }
        global.cinstance[0] = instance_create(r.x + 4, r.y + 12, obj_caterpillarchara);
        with (global.cinstance[0])
        {
            scr_caterpillar_interpolate();
            usprite = spr_ralseiu;
            dsprite = spr_ralseid;
            rsprite = spr_ralseir;
            lsprite = spr_ralseil;
            for (i = 0; i < 50; i += 1)
            {
                facing[i] = 1;
            }
            x -= 4;
            y -= 12;
        }
        con = 109;
        global.currentsong[1] = mus_loop(global.currentsong[0]);
        global.plot = 30;
        global.interact = 0;
        scr_tempsave();
    }
}
if (rflip == 1)
{
    if (instance_exists(r))
    {
        with (r)
        {
            image_angle += 2;
        }
    }
}
