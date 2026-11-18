if (!instance_exists(obj_time))
{
    scr_input_manager_process();
}
if (global.is_console)
{
    if (global.savedata_async_id >= 0)
    {
        exit;
    }
    if (!variable_global_exists("chapter"))
    {
        exit;
    }
    if (!textures_loaded)
    {
        textures_loaded = loadtex.loaded;
    }
    if (textures_loaded)
    {
        show_debug_message_concat("TEXTURES LOADED");
    }
    else
    {
        exit;
    }
}
var CH = string(global.chapter);
if (audio_group_is_loaded(audio_sfx))
{
    roomchoice = PLACE_CONTACT;
    menu_go = 0;
    if (scr_chapter_save_file_exists(global.chapter) || ossafe_file_exists("dr.ini"))
    {
        menu_go = 1;
    }
    if (scr_completed_chapter_any_slot(global.chapter))
    {
        menu_go = 2;
    }
    if (scr_debug())
    {
        menu_go = 3;
    }
    if (menu_go == 0 || menu_go == 1)
    {
        if (global.is_console)
        {
            global.screen_border_alpha = 0;
        }
        roomchoice = room_intro_ch5;
    }
    if (menu_go == 2)
    {
        if (global.is_console)
        {
            global.screen_border_alpha = 1;
        }
        scr_windowcaption("DELTARUNE");
        global.tempflag[10] = 1;
        roomchoice = room_legend;
        global.plot = 0;
    }
    if (menu_go == 3)
    {
        if (global.is_console)
        {
            global.screen_border_alpha = 0;
        }
        roomchoice = room_title_placeholder;
    }
    room_goto(roomchoice);
}

if (__scr_prefetch_textures_check_status() && !____________done) {
    ____________done = true;
    scr_input_manager_init();
    if (global.is_console)
    {
        ossafe_init();
        ossafe_savedata_load();
        if (os_type == os_ps4 || os_type == os_ps5)
        {
            window_set_cursor(cr_none);
        }
    }
    else
    {
        global_flagname_init();
        scr_84_init_localization();
        pal_swap_init_system(9);
        global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0);
        global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%/F$", 20, 0);
        global.damagefontpink = font_add_sprite_ext(spr_numbersfontbig_pink, "0123456789+-%/P$", 20, 0);
        global.hpfont = font_add_sprite_ext(spr_numbersfontsmall, "0123456789-+", 0, 2);
        scr_gamestart();
        for (i = 0; i < 100; i += 1)
        {
            global.tempflag[i] = 0;
        }
        global.heartx = 300;
        global.hearty = 220;
        scr_load_audio();
        if (!instance_exists(obj_time))
        {
            instance_create(0, 0, obj_time);
        }
    }
}
