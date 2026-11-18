global.is_console = scr_is_switch_os() || os_type == os_ps4 || os_type == os_ps5;
if (!global.is_console)
{
    window_enable_borderless_fullscreen(true);
}
global.debug = 0;
global.floortex_load_mode = 1;
var launch_data = scr_init_launch_parameters();
global.launcher = launch_data.is_launcher;
textures_loaded = false;
if (global.is_console)
{
    texture_set_interpolation(false);
}
if (global.launcher)
{
    if (scr_is_switch_os() && !variable_global_exists("switchlogin"))
    {
        global.switchlogin = launch_data.switch_id;
        if (global.switchlogin >= 0)
        {
            switch_save_data_mount(global.switchlogin);
        }
        while (global.switchlogin < 0)
        {
            global.switchlogin = switch_accounts_select_account(true, false, false);
        }
        if (!switch_accounts_is_user_open(global.switchlogin))
        {
            switch_accounts_open_user(global.switchlogin);
        }
    }
}
else if (scr_is_switch_os() && !variable_global_exists("switchlogin"))
{
    var _id = -1;
    while (_id < 0)
    {
        _id = switch_accounts_select_account(true, false, false);
    }
    global.switchlogin = _id;
    switch_accounts_open_user(global.switchlogin);
}
if (global.is_console)
{
    if (!instance_exists(obj_event_manager))
    {
        var event_manager = instance_create(0, 0, obj_event_manager);
        with (event_manager)
        {
            init();
        }
    }
}
if (!instance_exists(obj_widescreen_manager))
{
    global.widescreen_manager = instance_create(0, 0, obj_widescreen_manager);
}
global.chapter = 5;
____________done = false;
global.flag = [];
global.flag[9999] = 0;
global.chemg_god_mode = false;
global.screen_border_id = stringsetloc("Dynamic", "obj_initializer2_slash_Create_0_gml_22_0");
global.screen_border_active = true;
global.screen_border_alpha = 0;
global.screen_border_state = 0;
global.screen_border_dynamic_fade_id = 0;
global.screen_border_dynamic_fade_level = 0;
global.savedata_async_id = -1;
global.savedata_async_load = false;
global.savedata_error = false;
global.savedata_debuginfo = "";
global.versionno = "v0.0.253";
if (scr_is_switch_os())
{
    global.versionno = "v0.0.253";
}
else if (os_type == os_ps4 || os_type == os_ps5)
{
    global.versionno = "v0.0.253";
}
global.pause_plat = false;
global.game_won = false;
global.parallax_focal_length = 160;
if (!variable_global_exists("entrance_animation"))
{
    global.start_in_platmode = UnknownEnum.Value_0;
    global.enemy_kb_on = 0;
    global.start_in_dashmode = UnknownEnum.Value_0;
    global.marker_lerpX = -4;
    global.marker_lerpY = -4;
    global.plat_hspeed = -999;
    global.plat_vspeed = -999;
    global.entrance_animation = 0;
    global.pause_plat = false;
}
loadtex = -4;
if (global.is_console)
{
    loadtex = instance_create(0, 0, obj_prefetchtex);
}
else
{
    scr_prefetch_textures();
}
textures_loaded = false;

enum UnknownEnum
{
    Value_0
}
