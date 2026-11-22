cur_jewel = 0;
alarm[0] = 1;
charcon = 0;
chartimer = 0;
tp = 0;
xx = camerax();
yy = cameray();
global.fighting = 0;
movenoise = 0;
selectnoise = 0;
cancelnoise = 0;
onebuffer = 0;
twobuffer = 0;
threebuffer = 0;
upbuffer = 0;
downbuffer = 0;
hold_up = 0;
hold_down = 0;
dograndom = 0;
atalk = 0;
deschaver = 0;
evidencecheck = -1;
yellowed = 0;
bcolor = merge_color(c_purple, c_black, 0.7);
bcolor = merge_color(bcolor, c_dkgray, 0.5);
chartotal = 0;
havechar[0] = 0;
havechar[1] = 0;
havechar[2] = 0;
havechar[3] = 0;
global.charturn = 3;
tp = 0;
tpy = 50;
bp = 0;
bpy = 152;
mmy[0] = 0;
mmy[1] = 0;
mmy[2] = 0;
mmy[3] = 0;
global.submenu = 0;
global.charselect = -1;
for (var i = 0; i < 36; i += 1)
{
    global.submenucoord[i] = 0;
}
global.cinstance[0] = 4343434343;
global.cinstance[1] = 343434343434;
for (var i = 0; i < 3; i += 1)
{
    global.faceaction[i] = 0;
    if (global.char[i] != 0)
    {
        chartotal += 1;
    }
    if (global.char[i] == 1)
    {
        havechar[0] = 1;
        charpos[0] = i;
    }
    if (global.char[i] == 2)
    {
        havechar[1] = 1;
        charpos[1] = i;
        if (i > 0)
        {
            global.cinstance[i - 1] = instance_create(obj_mainchara.x - 6, obj_mainchara.y - 16, obj_caterpillarchara);
            global.cinstance[i - 1].target = i * 12;
        }
    }
    if (global.char[i] == 3)
    {
        havechar[2] = 1;
        charpos[2] = i;
        if (i > 0)
        {
            global.cinstance[i - 1] = instance_create(obj_mainchara.x - 2, obj_mainchara.y - 12, obj_caterpillarchara);
            global.cinstance[i - 1].target = i * 12;
            with (global.cinstance[i - 1])
            {
                name = "ralsei";
                // TODO: Fix properly
                slidesprite = global.chapter == 1 ? spr_pxwhite : spr_ralsei_slide;
                if (global.chapter >= 2)
                {
                    usprite = spr_ralsei_walk_up;
                    dsprite = spr_ralsei_walk_down;
                    rsprite = spr_ralsei_walk_right;
                    lsprite = spr_ralsei_walk_left;
                    if (global.chapter == 5)
                    {
                        if (scr_flag_get(1311) == 1)
                        {
                            dsprite = spr_ralseid;
                            rsprite = spr_ralseir;
                            lsprite = spr_ralseil;
                            usprite = spr_ralseiu;
                        }
                    }
                }
                else
                {
                    usprite = spr_ralseiu;
                    dsprite = spr_ralseid;
                    rsprite = spr_ralseir;
                    lsprite = spr_ralseil;
                }
            }
        }
    }
    if (global.char[i] == 4)
    {
        havechar[3] = 1;
        charpos[3] = i;
        if (i > 0)
        {
            global.cinstance[i - 1] = instance_create(obj_mainchara.x - 4, obj_mainchara.y - 20, obj_caterpillarchara);
            global.cinstance[i - 1].target = i * 12;
            with (global.cinstance[i - 1])
            {
                name = "noelle";
                slidesprite = spr_noelle_walk_down_dw;
                usprite = spr_noelle_walk_up_dw;
                dsprite = spr_noelle_walk_down_dw;
                rsprite = spr_noelle_walk_right_dw;
                lsprite = spr_noelle_walk_left_dw;
            }
        }
    }
}
global.charinstance[0] = obj_mainchara;
global.charinstance[1] = global.cinstance[0];
global.charinstance[2] = global.cinstance[1];
disablesusieralseiattack = false;
slmxx = 0;
slmyy = 0;
s_siner = 0;
menusiner = 0;
pagemax[0] = 0;
pagemax[1] = 0;
getmusvol = 1;
curvol = 1;
drawchar = 0;
hpcolor[0] = c_aqua;
hpcolor[1] = c_fuchsia;
hpcolor[2] = c_lime;
hpcolor[3] = c_yellow;
menu_sprite = scr_84_get_sprite("spr_darkmenudesc");
autorun_text = stringsetloc("Auto-Run", "obj_darkcontroller_slash_Draw_0_gml_94_0");
back_text = stringsetloc("Back", "obj_darkcontroller_slash_Draw_0_gml_96_0");
gamepad_controls = [gp_face1, gp_face2, gp_face3, gp_face4, gp_shoulderl, gp_shoulderlb, gp_shoulderr, gp_shoulderrb, gp_select, gp_start, gp_stickl, gp_stickr, gp_padu, gp_padd, gp_padl, gp_padr];
border_options = [stringsetloc("Dynamic", "obj_darkcontroller_slash_Create_0_gml_153_0"), stringsetloc("Simple", "obj_darkcontroller_slash_Create_0_gml_153_1"), stringsetloc("None", "obj_darkcontroller_slash_Create_0_gml_153_2")];
var border_options_en = ["Dynamic", "Simple", "None"];
var border_options_ja = ["ダイナミック", "シンプル", "なし"];
if (global.lang == "ja")
{
    for (var i = 0; i < array_length(border_options_en); i++)
    {
        if (border_options_en[i] == global.screen_border_id)
        {
            global.screen_border_id = border_options_ja[i];
            break;
        }
    }
}
else
{
    for (var i = 0; i < array_length(border_options_ja); i++)
    {
        if (border_options_ja[i] == global.screen_border_id)
        {
            global.screen_border_id = border_options_en[i];
            break;
        }
    }
}
selected_border = 0;
for (var i = 0; i < array_length_1d(border_options); i++)
{
    if (border_options[i] == global.screen_border_id)
    {
        selected_border = i;
        break;
    }
}

killfloweryshine = function()
{
    with (obj_marker)
    {
        if (sprite_index == spr_flowery_teethshine_mouthonly)
        {
            instance_destroy();
        }
    }
    with (obj_marker_fancy)
    {
        if (sprite_index == spr_shine_white)
        {
            instance_destroy();
        }
    }
};

floweryshine = function()
{
    snd_stop(snd_flowery_voiceclip_nonono);
    snd_play_flowery(187);
    killfloweryshine();
    var cam = scr_getcam();
    var _xloc = camera_get_view_x(view_camera[0]) + 208;
    var _yloc = camera_get_view_y(view_camera[0]) + 184;
    if (global.lang == "ja")
    {
        if (global.submenu == 10)
        {
            _xloc -= 22;
        }
        if (global.submenu == 20)
        {
            _xloc -= 15;
        }
    }
    var smile = scr_marker_ext(_xloc, _yloc, spr_flowery_teethshine_mouthonly, 2, 2, undefined, undefined, undefined, depth - 1, undefined, 15);
    with (smile)
    {
        image_index = 1;
        scr_doom(id, 10);
        with (scr_marker_fancy(_xloc, _yloc, 4635))
        {
            extflag = "smile";
            depth = -50;
            scr_size(2, 2);
            timer = 0;
            image_speed = 0.25;
            vspeed = -0.5;
            hspeed = 0.5;
            image_alpha = 2;
            gravity = 0.05;
            
            step_func = function()
            {
                image_alpha -= 0.1;
                if (image_alpha < 0)
                {
                    instance_destroy();
                }
            };
        }
    }
};

errornoise = 0
errornoisebuf = -1

controlmenuhack = 0;

configmenuscrollstart = 0;

if (global.chapter < 5) {
    scr_platswap_yscale = function() { return [0, 1]; }
}

reloadconfigmenu = function() {

configmenuregistry = []

// configmenuregistry format:
// name: string
// func: function(index)
// extratext: string
// col: c_*
// input_callback: 0 / function(index, input)
// draw_callback: 0 / function(index, text, extratext, xx, yy, drawpos_x, drawpos_y, select_drawpos_x, col)

configmenu_input_callback = 0;
configmenu_input_callback_idx = -1;

configmenu_stacked_menu = 0;

configmenuregistry[array_length(configmenuregistry)] = { name: "Master Volume", func: function(index) {
        obj_darkcontroller.configmenuregistry[index].col = c_yellow;
        obj_darkcontroller.selectnoise = 1;
    }, extratext: (string(round(global.flag[17] * 100)) + "%"), col: c_white, input_callback: function(index, input) {
        switch(input) {
            case 6:
                // Left (held)
                var last = global.flag[17];
                global.flag[17] -= button3_h() ? 0.01 : 0.02;
                global.flag[17] = clamp(global.flag[17], 0, 1);
                if (global.flag[17] != last) obj_darkcontroller.audchange = 1;
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = string(round(global.flag[17] * 100)) + "%";
                break;
            case 7:
                // Right (held)
                var last = global.flag[17];
                global.flag[17] += button3_h() ? 0.01 : 0.02;
                global.flag[17] = clamp(global.flag[17], 0, 1);
                if (global.flag[17] != last) obj_darkcontroller.audchange = 1;
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = string(round(global.flag[17] * 100)) + "%";
                break;
            case 8:
            case 9:
                // Z / X
                obj_darkcontroller.configmenu_input_callback = 0;
                obj_darkcontroller.configmenu_input_callback_idx = -1;
                obj_darkcontroller.cancelnoise = 1;
                obj_darkcontroller.configmenuregistry[index].col = c_white;
                break;
        }
}, draw_callback: 0 };

configmenuregistry[array_length(configmenuregistry)] = { name: "Music Volume", func: function(index) {
        obj_darkcontroller.configmenuregistry[index].col = c_yellow;
        obj_darkcontroller.selectnoise = 1;
    }, extratext: (string(round(global.flag[16] * 100)) + "%"), col: c_white, input_callback: function(index, input) {
        switch(input) {
            case 6:
                // Left (held)
                var last = global.flag[16];
                global.flag[16] -= button3_h() ? 0.01 : 0.02;
                global.flag[16] = clamp(global.flag[16], 0, 1);
                if (global.flag[16] != last) { obj_darkcontroller.muschange = 1; obj_darkcontroller.movenoise = 1; }
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = string(round(global.flag[16] * 100)) + "%";
                break;
            case 7:
                // Right (held)
                var last = global.flag[16];
                global.flag[16] += button3_h() ? 0.01 : 0.02;
                global.flag[16] = clamp(global.flag[16], 0, 1);
                if (global.flag[16] != last) { obj_darkcontroller.muschange = 1; obj_darkcontroller.movenoise = 1; }
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = string(round(global.flag[16] * 100)) + "%";
                break;
            case 8:
            case 9:
                // Z / X
                obj_darkcontroller.configmenu_input_callback = 0;
                obj_darkcontroller.configmenu_input_callback_idx = -1;
                obj_darkcontroller.cancelnoise = 1;
                obj_darkcontroller.configmenuregistry[index].col = c_white;
                break;
        }
}, draw_callback: 0 };

// Does work, but not that well
/*configmenuregistry[array_length(configmenuregistry)] = { name: "Sound Volume", func: function(index) {
        obj_darkcontroller.configmenuregistry[index].col = c_yellow;
        selectnoise = 1;
    }, extratext: (": " + string(round(global.flag[15] * 100)) + "%"), col: c_white, input_callback: function(index, input) {
        switch(input) {
            case 6:
                // Left (held)
                var last = global.flag[15];
                global.flag[15] -= button3_h() ? 0.01 : 0.02;
                global.flag[15] = clamp(global.flag[15], 0, 1);
                if (global.flag[15] != last) obj_darkcontroller.sndchange = 1;
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = ": " + string(round(global.flag[15] * 100)) + "%";
                break;
            case 7:
                // Right (held)
                var last = global.flag[15];
                global.flag[15] += button3_h() ? 0.01 : 0.02;
                global.flag[15] = clamp(global.flag[15], 0, 1);
                if (global.flag[15] != last) obj_darkcontroller.sndchange = 1;
                else obj_darkcontroller.errornoise = 1;
                obj_darkcontroller.configmenuregistry[index].extratext = ": " + string(round(global.flag[15] * 100)) + "%";
                break;
            case 8:
            case 9:
                // Z / X
                obj_darkcontroller.configmenu_input_callback = 0;
                obj_darkcontroller.configmenu_input_callback_idx = -1;
                obj_darkcontroller.cancelnoise = 1;
                obj_darkcontroller.configmenuregistry[index].col = c_white;
                break;
        }
}, draw_callback: 0 };*/

configmenuregistry[array_length(configmenuregistry)] = { name: "Controls", func: function(index) {
    obj_darkcontroller.selectnoise = 1;
    // TODO: Make a proper new controls menu
    obj_darkcontroller.controlmenuhack = 1;
    global.menuno = 5;
    global.submenu = 35;
    global.submenucoord[35] = 0;
    obj_darkcontroller.control_select_con = 0;
    obj_darkcontroller.control_flash_timer = 0;
    obj_darkcontroller.onebuffer = 0;
}, extratext: "", col: c_white, input_callback: 0, draw_callback: 0 };

_str_on = stringsetloc("ON", "obj_darkcontroller_slash_Draw_0_gml_140_0");
_str_off = stringsetloc("OFF", "obj_darkcontroller_slash_Draw_0_gml_141_0");

if (global.chapter == 5) {
    // global.flag[1391] is voiceclips
    configmenuregistry[array_length(configmenuregistry)] = { name: "Voice Clips", func: function(index) {
        global.flag[1391] = global.flag[1391] == 0 ? 1 : 0;
        obj_darkcontroller.configmenuregistry[index].extratext = (global.flag[1391] == 0 ? obj_darkcontroller._str_on : obj_darkcontroller._str_off);
        
        if (global.flag[1391] == 1) obj_darkcontroller.cancelnoise = 1;
        else obj_darkcontroller.selectnoise = 1;
        
        // Add ja version of this list
        if (global.flag[1391] == 0) {
            snd_play(choose(snd_flowery_voiceclip_jarona1, snd_flowery_voiceclip_jarona2, snd_flowery_voiceclip_jarona3, snd_flowery_voiceclip_jarona4, snd_flowery_voiceclip_glue, snd_flowery_voiceclip_try_my_flavor, snd_flowery_voiceclip_mostlys, snd_flowery_voiceclip_hey, snd_flowery_voiceclip_itsmeflowery, snd_flowery_voiceclip_stingus, snd_flowery_voiceclip_mysterious_wind, snd_flowery_voiceclip_smile_again, snd_flowery_voiceclip_hereicomesanfrandisc, snd_flowery_voiceclip_hereicomesanfrandisco_strong, snd_flowery_voiceclip_great_style, snd_flowery_voiceclip_hah, snd_flowery_voiceclip_leaf_it_to_me, snd_flowery_voiceclip_flowers_blooms_in_your_heart, snd_flowery_voiceclip_hoo, snd_flowery_voiceclip_theyre_eating_my_flesh, snd_flowery_voiceclip_minipeppers, snd_flowery_voiceclip_blingo_blizzard, snd_flowery_voiceclip_your_dad, snd_flowery_voiceclip_the_diner));
        }
    }, extratext: (global.flag[1391] == 0 ? obj_darkcontroller._str_on : obj_darkcontroller._str_off), col: c_white, input_callback: 0, draw_callback: 0 };
}

if (global.flag[24]) {
    configmenuregistry[array_length(configmenuregistry)] = { name: "Feather", func: function(index) {
        obj_darkcontroller.selectnoise = 1;
        
        global.flag[25] = global.flag[25] == 0 ? 1 : 0;
        
        obj_darkcontroller.configmenuregistry[index].extratext = global.flag[25] == 0 ? stringsetloc("Jump: Cancel\nAttack: Confirm", "obj_darkcontroller_slash_Draw_0_gml_188_0") : stringsetloc("Jump: Confirm\nAttack: Cancel", "obj_darkcontroller_slash_Draw_0_gml_189_0");
        }, extratext: global.flag[25] == 0 ? stringsetloc("Jump: Cancel\nAttack: Confirm", "obj_darkcontroller_slash_Draw_0_gml_188_0") : stringsetloc("Jump: Confirm\nAttack: Cancel", "obj_darkcontroller_slash_Draw_0_gml_189_0"), col: c_white, input_callback: 0, draw_callback: function(index, text, extratext, xx, yy, drawpos_x, drawpos_y, select_drawpos_x, col) {
                // Purplesmaug96: Unsure where this is used, tell me if you know!
                /*
                var col = 0xFFFFFF;
                if (scr_flag_get_ext(1762, 0, 2) == 0)
                {
                    col = 0xFFFF00;
                }
                if (scr_flag_get_ext(1762, 0, 2) == 0)
                {
                    if (global.menuno == 6 && global.submenu == 30 && global.submenucoord[30] == 2)
                    {
                        scr_flag_set_ext(1762, 0, 1, 2);
                    }
                }
                else if (scr_flag_get_ext(1762, 0, 2) == 1)
                {
                    obj_darkcontroller.yellowed++;
                    var __endtime = 15;
                    if (obj_darkcontroller.yellowed >= __endtime)
                    {
                        obj_darkcontroller.yellowed = 0;
                        scr_flag_set_ext(1762, 0, 2, 2);
                    }
                    else
                    {
                        col = merge_color(c_yellow, c_white, lerp_inout_cubic(0, 1, yellowed / __endtime));
                    }
                }
                */
                draw_set_color(col);
                draw_text(drawpos_x, drawpos_y, text);
                var mem = 
                {
                    h: draw_get_halign(),
                    v: draw_get_valign(),
                    f: draw_get_font()
                };
                draw_set_halign(fa_left);
                draw_set_valign(fa_middle);
                draw_set_font(scr_84_get_font("main"));
                draw_text(select_drawpos_x, drawpos_y + 16, extratext);
                draw_set_halign(mem.h);
                draw_set_valign(mem.v);
                draw_set_font(mem.f);
    } };
}

// TODO: Ralseis

configmenuregistry[array_length(configmenuregistry)] = { name: "Fullscreen", func: function(index) {
    obj_darkcontroller.selectnoise = 1;
    
    with (obj_time)
        fullscreen_toggle = 1;
    
    // TODO: This is hacky
    if (window_get_fullscreen()) {
        obj_darkcontroller.configmenuregistry[index].extratext = obj_darkcontroller._str_off;
    }
    else {
        obj_darkcontroller.configmenuregistry[index].extratext = obj_darkcontroller._str_on;
    }
}, extratext: (window_get_fullscreen() ? obj_darkcontroller._str_on : obj_darkcontroller._str_off), col: c_white, input_callback: 0, draw_callback: 0 };


configmenuregistry[array_length(configmenuregistry)] = { name: "Auto-Run", func: function(index) {
    if (!global.flag[11]) obj_darkcontroller.selectnoise = 1;
    else obj_darkcontroller.cancelnoise = 1;

    global.flag[11] = !global.flag[11];

    obj_darkcontroller.configmenuregistry[index].extratext = global.flag[11] == 0 ? obj_darkcontroller._str_off : obj_darkcontroller._str_on;
}, extratext: global.flag[11] == 0 ? obj_darkcontroller._str_off : obj_darkcontroller._str_on, col: c_white, input_callback: 0, draw_callback: 0 };

configmenuregistry[array_length(configmenuregistry)] = { name: "Return to Title", func: function(index) {
    game_restart_true();
    }, extratext: "", col: c_white, input_callback: 0, draw_callback: 0 };


// TODO: Put this somewhere better...
// if (variable_global_exists("widescreen_width")) {
//     configmenuregistry[array_length(configmenuregistry)] = { name: "Widescreen Mod Settings", func: function(index) {
//         obj_darkcontroller.configmenuregistry = [];
//         obj_darkcontroller.configmenuscrollstart = 0;
//         obj_darkcontroller.configmenu_stacked_menu = 1;
//         obj_darkcontroller.selectnoise = 1;
//         }, extratext: "", col: c_white, input_callback: 0, draw_callback: 0 };
// }

configmenuregistry[array_length(configmenuregistry)] = { name: "Exit", func: function(index) {
    obj_darkcontroller.m_quit = 1;
    obj_darkcontroller.cancelnoise = 1;
    }, extratext: "", col: c_white, input_callback: 0, draw_callback: 0 };

}

reloadconfigmenu();
