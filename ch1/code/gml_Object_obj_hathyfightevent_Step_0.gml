if (con == 1 && obj_mainchara.x >= 1300 && obj_mainchara.y > 900 && global.interact == 0)
{
    global.interact = 1;
    con = 2;
    sprite_index = spr_lancer_lt;
    instance_create(x + (sprite_width / 2), y - 10, obj_excblcon);
    alarm[4] = 30;
}
if (con > 2)
{
    if (con == 3)
    {
        global.fc = 5;
        global.typer = 32;
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_19_0"); // * Ho ho ho^1!&* Somehow^1, you survived the maze!/ // * Ho ho ho^1!&* Somehow^1, you survived the maze!/ // * Ho ho ho^1!&* Somehow^1, you survived the maze!/
        global.msg[1] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_20_0"); // \E1* But don't count your blessings before they hatch...!/ // \E1* But don't count your blessings before they hatch...!/ // \E1* But don't count your blessings before they hatch...!/
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_21_0"); // \E2* Let's see how you fare against THIS team!/% // \E2* Let's see how you fare against THIS team!/% // \E2* Let's see how you fare against THIS team!/%
        instance_create(0, 0, obj_dialoguer);
        con = 4;
    }
    if (con == 4 && d_ex() == 0)
    {
        hspeed = 16;
        con = 5;
        alarm[4] = 10;
    }
    if (con == 6)
    {
        instance_create(0, 0, obj_battleback);
        global.encounterno = 9;
        scr_encountersetup(global.encounterno);
        global.specialbattle = 0;
        global.flag[9] = 1;
        global.batmusic[0] = snd_init("battle.ogg");
        instance_create(0, 0, obj_encounterbasic);
        for (i = 0; i < 3; i += 1)
        {
            h[i] = scr_dark_marker(global.monstermakex[i] + 250, global.monstermakey[i], spr_heartenemy_idle);
            with (h[i])
            {
                hspeed = -10;
            }
        }
        con = 7;
        if (global.plot < 36)
        {
            global.plot = 36;
        }
        alarm[4] = 25;
    }
    if (con == 8)
    {
        for (i = 0; i < 3; i += 1)
        {
            with (h[i])
            {
                instance_destroy();
            }
        }
        con = 9;
        alarm[4] = 15;
    }
    if (con == 15)
    {
        depth = 0;
        x = raw_camerax() + camerawidth();
        hspeed = -20;
        con = 16;
        alarm[4] = 15;
    }
    if (con == 17)
    {
        hspeed = 0;
        global.fc = 5;
        global.fe = 0;
        global.typer = 46;
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_79_0"); // * Hey, why aren't you guys thrashed?! You're totally outnumbered!/ // * Hey, why aren't you guys thrashed?! You're totally outnumbered!/ // * Hey, why aren't you guys thrashed?! You're totally outnumbered!/
        scr_ralface(1, "B");
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_81_0"); // * You made a team purely of SUPPORT ENEMIES./ // * You made a team purely of SUPPORT ENEMIES./ // * You made a team purely of SUPPORT ENEMIES./
        global.msg[3] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_82_0"); // * Their bullet patterns aren't balanced at all./ // * Their bullet patterns aren't balanced at all./ // * Their bullet patterns aren't balanced at all./
        global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_83_0"); // \E1* It's like a dinner made out of three glasses of milk./ // \E1* It's like a dinner made out of three glasses of milk./ // \E1* It's like a dinner made out of three glasses of milk./
        scr_lanface(5, 0);
        global.msg[6] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_85_0"); // * .../ // * .../ // * .../
        global.msg[7] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_86_0"); // \E7* And that's, um..^1.&* Unusual, somehow?/ // \E7* And that's, um..^1.&* Unusual, somehow?/ // \E7* And that's, um..^1.&* Unusual, somehow?/
        scr_ralface(8, 8);
        global.msg[9] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_88_0"); // * Why don't we talk about this AFTER the battle?/% // * Why don't we talk about this AFTER the battle?/% // * Why don't we talk about this AFTER the battle?/%
        scr_battletext();
        con = 18;
    }
    if (con == 18 && instance_exists(obj_writer) == false)
    {
        global.fc = 0;
        hspeed = 20;
        con = 19;
        with (obj_battlecontroller)
        {
            alarm[2] = 21;
        }
        alarm[4] = 20;
    }
    if (con == 20)
    {
        with (obj_battlecontroller)
        {
            noreturn = 0;
        }
        con = 21;
    }
    if (con == 30)
    {
        global.fc = 2;
        global.fe = 8;
        global.typer = 45;
        global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_116_0"), string(global.monsterexp[3]), string(global.monstergold[3])); // * Great job, Kris!&* We earned ~1 EXP&and ~2 D$!/% // * Great job, Kris!&* We earned ~1 EXP&and ~2 D$!/% // * Great job, Kris!&* We earned ~1 EXP&and ~2 D$!/%
        scr_battletext();
        con = 31;
    }
    if (con == 31 && instance_exists(obj_writer) == false)
    {
        depth = 0;
        x = raw_camerax() + camerawidth();
        hspeed = -20;
        con = 32;
        alarm[4] = 15;
    }
    if (con == 33)
    {
        hspeed = 0;
        global.fc = 5;
        global.fe = 2;
        global.typer = 46;
        global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_136_0"); // * Sweet!&* How much do I get?/ // * Sweet!&* How much do I get?/ // * Sweet!&* How much do I get?/
        scr_ralface(1, "B");
        global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_138_0"); // * You..^1. lost^1, Lancer^1.&* You don't get any./ // * You..^1. lost^1, Lancer^1.&* You don't get any./ // * You..^1. lost^1, Lancer^1.&* You don't get any./
        scr_lanface(3, 4);
        global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_140_0"); // * Oh./ // * Oh./ // * Oh./
        global.msg[5] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_141_0"); // \E3* Can I have some of yours?/ // \E3* Can I have some of yours?/ // \E3* Can I have some of yours?/
        scr_ralface(6, "A");
        global.msg[7] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_143_0"); // * No!/ // * No!/ // * No!/
        scr_lanface(8, 1);
        global.msg[9] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_145_0"); // * Fine^1!&* Later, losers!/% // * Fine^1!&* Later, losers!/% // * Fine^1!&* Later, losers!/%
        scr_battletext();
        con = 34;
    }
    if (con == 34 && instance_exists(obj_writer) == false)
    {
        npc = instance_create(1740, 1080, obj_npc_room);
        global.fc = 0;
        hspeed = 20;
        con = 35;
        alarm[4] = 20;
    }
    if (con == 36)
    {
        with (obj_battlecontroller)
        {
            victoried = 1;
        }
        con = 37;
    }
}
if (equipcon >= 1)
{
    if (global.chararmor1[3] == 4 || global.chararmor2[3] == 4)
    {
        if (global.interact == 0 && scr_havechar(3))
        {
            global.fc = 2;
            global.fe = 1;
            global.typer = 31;
            global.msg[0] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_181_0"); // * K... Kris^1?&* You're giving it to me...?/ // * K... Kris^1?&* You're giving it to me...?/ // * K... Kris^1?&* You're giving it to me...?/
            global.msg[1] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_182_0"); // \E2* .../ // \E2* .../ // \E2* .../
            global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_183_0"); // \E7* Well^1?&* Does it look pretty...?/% // \E7* Well^1?&* Does it look pretty...?/% // \E7* Well^1?&* Does it look pretty...?/%
            if (scr_havechar(2))
            {
                global.msg[2] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_186_0"); // \E8* ... Do I look pretty^1, Susie?/ // \E8* ... Do I look pretty^1, Susie?/ // \E8* ... Do I look pretty^1, Susie?/
                scr_susface(3, 0);
                global.msg[4] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_188_0"); // * Leave me out of this./ // * Leave me out of this./ // * Leave me out of this./
                scr_ralface(5, 8);
                global.msg[6] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_190_0"); // * You didn't answer the question~/ // * You didn't answer the question~/ // * You didn't answer the question~/
                scr_susface(7, 7);
                global.msg[8] = scr_84_get_lang_string("obj_hathyfightevent_slash_Step_0_gml_192_0"); // * HOW AM I SUPPOSED TO KNOW!^1? LEAVE ME ALONE!!!/% // * HOW AM I SUPPOSED TO KNOW!^1? LEAVE ME ALONE!!!/% // * HOW AM I SUPPOSED TO KNOW!^1? LEAVE ME ALONE!!!/%
            }
            instance_create(0, 0, obj_dialoguer);
            equipcon = 2;
            global.interact = 1;
        }
    }
    if (equipcon == 2 && d_ex() == 0)
    {
        global.interact = 0;
        equipcon = -1;
    }
}
