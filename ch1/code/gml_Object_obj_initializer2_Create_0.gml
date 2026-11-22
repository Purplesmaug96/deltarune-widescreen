global.is_console = scr_is_switch_os() || (os_type == os_ps4 || os_type == os_ps5);
if (!global.is_console)
{
    window_enable_borderless_fullscreen(true);
}
global.debug = 0;
var launch_data = scr_init_launch_parameters();
global.launcher = launch_data.is_launcher;
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
if (!instance_exists(obj_event_manager))
{
    var event_manager = instance_create(0, 0, obj_event_manager);
    with (event_manager)
    {
        init();
    }
    if (os_type == os_ps4 || os_type == os_ps5)
    {
        with (event_manager)
        {
            enable_trophies();
        }
    }
}
global.chapter = 1;
if (!instance_exists(obj_widescreen_manager))
{
    global.widescreen_manager = instance_create(0, 0, obj_widescreen_manager);
}
global_flagname_init();
global.screen_border_id = "Dynamic";
global.screen_border_active = true;
global.screen_border_alpha = 1;
global.screen_border_state = 0;
global.screen_border_dynamic_fade_id = 0;
global.screen_border_dynamic_fade_level = 0;
global.savedata_async_id = -1;
global.savedata_async_load = false;
global.savedata_error = false;
global.savedata_debuginfo = "";
global.version = "1.43";
if (scr_is_switch_os())
{
    global.version = "1.31";
}
if (os_type == os_ps4 || os_type == os_ps5)
{
    global.version = "1.31";
}
old_savedata_check = false;

scr_prefetch_textures();
____________done = false;
