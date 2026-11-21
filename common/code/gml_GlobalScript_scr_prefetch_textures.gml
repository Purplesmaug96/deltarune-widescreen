function scr_prefetch_textures()
{
    var texture_groups = ["Default", "ConsolePS4"];
    if (global.is_console)
    {
        if (scr_is_switch_os())
        {
            texture_groups = ["Default", "ConsoleSwitch"];
        }
        texture_groups[array_length(texture_groups)] = "Console";
    }

    // TODO: Figure out if this is actually unused or not...
    var texture_groups_nonblock = [];
    
    if (global.chapter == 5) {
        array_push(texture_groups_nonblock, "unusedAssets");
    }

    if (global.chapter >= 3) {
        // It's just Tenna??
        array_push(texture_groups_nonblock, "NoAutoCrop");
    }

    if (global.chapter == 5 && global.floortex_load_mode == 1)
    {
        array_push(texture_groups_nonblock, "ftex_castle_left", "ftex_castle_right", "ftex_castle_top", "ftex_cliffs", "ftex_garden");
    }

    for (var i = 0; i < array_length(texture_groups); i++)
    {
        if (global.async_texture_loads) {
            texturegroup_load(texture_groups[i]);
        }
        else {
            var _tex_array = texturegroup_get_textures(texture_groups[i]);
            for (var j = 0; j < array_length(_tex_array); j++)
            {
                if (texture_is_ready(_tex_array[j]))
                {
                    continue;
                }
                texture_prefetch(_tex_array[j]);
            }
        }
    }

    for (var i = 0; i < array_length(texture_groups_nonblock); i++)
    {
        if (global.async_texture_loads) {
            texturegroup_load(texture_groups_nonblock[i]);
        }
        else {
            var _tex_array = texturegroup_get_textures(texture_groups_nonblock[i]);
            for (var j = 0; j < array_length(_tex_array); j++)
            {
                if (texture_is_ready(_tex_array[j]))
                {
                    continue;
                }
                texture_prefetch(_tex_array[j]);
            }
        }
    }

    if (global.async_texture_loads) {
        __scr_prefetch_textures_texture_groups = texture_groups;
        __scr_prefetch_textures_check_status = function() {
            for (var j = 0; j < array_length(__scr_prefetch_textures_texture_groups); j++)
            {
                if (texturegroup_get_status(__scr_prefetch_textures_texture_groups[j]) < /*texturegroup_status_loaded*/2)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
