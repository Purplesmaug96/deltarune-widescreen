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
    array_push(texture_groups, "NoAutoCrop");
    if (global.floortex_load_mode == 1)
    {
        array_push(texture_groups, "ftex_castle_left", "ftex_castle_right", "ftex_castle_top", "ftex_cliffs", "ftex_garden");
    }
    array_push(texture_groups, "unusedAssets");
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
}
