ossafe_ini_open("widescreen.ini");

if (ini_read_real("GRAPHICS", "widescreen_width", 0) == 0) {
    global.widescreen_width = round(display_get_width() / (display_get_height() / 480));
}
else {
    global.widescreen_width = ini_read_real("GRAPHICS", "widescreen_width", 0);
}

global.widescreen_half_width = global.widescreen_width / 2;

if (!ini_key_exists("GRAPHICS", "widescreen_width")) {
    ini_write_real("GRAPHICS", "widescreen_width", 0);
}

global.native_res = ini_read_real("GRAPHICS", "native_res", 0);
if (!ini_key_exists("GRAPHICS", "native_res")) {
    ini_write_real("GRAPHICS", "native_res", 0);
}
if (global.native_res) {
    window_set_size(global.widescreen_width * (display_get_height() / 480), display_get_height());
    surface_resize(application_surface, global.widescreen_width * (display_get_height() / 480), display_get_height());
}
else {
    window_set_size(global.widescreen_width, 480);
    surface_resize(application_surface, global.widescreen_width, 480);
}

global.widescreen_mult = global.widescreen_width / 640;
global.widescreen_div = 1 / global.widescreen_mult;
global.widescreen_diff = global.widescreen_width - 640;
global.widescreen_half_diff = global.widescreen_diff / 2;
global.widescreen_quarter_diff = global.widescreen_diff / 4;

global.target_fps = ini_read_real("GRAPHICS", "fps", 30);
if (!ini_key_exists("GRAPHICS", "fps")) {
    ini_write_real("GRAPHICS", "fps", global.target_fps);
}

global.spdmult = 30 / global.target_fps;
global.spddiv = 1 / global.spdmult;

global.hide_battleui_textbox = ini_read_real("GRAPHICS", "hide_battleui_textbox", 0);
if (!ini_key_exists("GRAPHICS", "hide_battleui_textbox")) {
    ini_write_real("GRAPHICS", "hide_battleui_textbox", global.hide_battleui_textbox);
}

global.move_dd_ch5 = ini_read_real("GRAPHICS", "move_dd_ch5", 1);
if (!ini_key_exists("GRAPHICS", "move_dd_ch5")) {
    ini_write_real("GRAPHICS", "move_dd_ch5", global.move_dd_ch5);
}

global.async_texture_loads = ini_read_real("GRAPHICS", "async_texture_loads", 1);
if (!ini_key_exists("GRAPHICS", "async_texture_loads")) {
    ini_write_real("GRAPHICS", "async_texture_loads", global.async_texture_loads);
}

global.load_screen = ini_read_real("GRAPHICS", "load_screen", 1);
if (!ini_key_exists("GRAPHICS", "load_screen")) {
    ini_write_real("GRAPHICS", "load_screen", global.load_screen);
}

if (global.load_screen) {
    global.load_screen_spr = sprite_add("load_screen/ch" + string(global.chapter) + ".png", 1, false, false, 0, 0);
}

global.alt_attack_mode = ini_read_real("GAMEPLAY", "alt_attack_mode", 0);
if (!ini_key_exists("GAMEPLAY", "alt_attack_mode")) {
    ini_write_real("GAMEPLAY", "alt_attack_mode", global.alt_attack_mode);
}

global.debug = ini_read_real("DEBUG", "debug", 0);
if (!ini_key_exists("DEBUG", "debug")) {
    ini_write_real("DEBUG", "debug", 0);
}

ossafe_ini_close();

global.widescreen_mod_ver = "0.1.0-dev"

// So it doesnt crash on first frame
global._debugplus_chemg_x = 0;
global._debugplus_chemg_y = 0;
global._debugplus_counter = 0;

// For LW, the original values are hijacked since LW is 320x240
global._widescreen_width = global.widescreen_width;
global._widescreen_diff = global.widescreen_diff;
global._widescreen_half_diff = global.widescreen_half_diff;
global._widescreen_quarter_diff = global.widescreen_quarter_diff;

switch_to_lw = function() {
    global.widescreen_width = global._widescreen_width / 2;
    global.widescreen_diff = global._widescreen_diff / 2;
    global.widescreen_half_diff = global._widescreen_half_diff / 2;
    global.widescreen_quarter_diff = global._widescreen_quarter_diff / 2;
}

switch_to_dw = function() {
    global.widescreen_width = global._widescreen_width;
    global.widescreen_diff = global._widescreen_diff;
    global.widescreen_half_diff = global._widescreen_half_diff;
    global.widescreen_quarter_diff = global._widescreen_quarter_diff;
}
