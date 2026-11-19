function scr_change_language()
{
    if (global.lang == "en")
    {
        global.lang = "ja";
    }
    else
    {
        global.lang = "en";
    }
    ossafe_ini_open("true_config.ini");
    ini_write_string("LANG", "LANG", global.lang);
    ossafe_ini_close();
    ossafe_savedata_save();
    scr_84_init_localization();
}

// TODO: Find better place for these
// TODO: Make it work properly
function stringsetloc(arg1, arg2) { return arg1 }

function substringargs(arg0, arg1, arg2)
{
    var str = arg0;
    var offset = arg1;
    var args = arg2;
    var sub_id = 1;
    var num_args = array_length_1d(args);
    var len = (num_args - offset) + 1;
    while (sub_id < len)
    {
        var sub = "~" + string(sub_id);
        var ndx = (sub_id + offset) - 1;
        str = string_replace_all(str, sub, args[ndx]);
        sub_id = sub_id + 1;
    }
    return str;
}

// Weird...
function stringset(arg0)
{
    return arg0;
}

function stringsetsubloc()
{
    var len = argument_count;
    var args;
    for (var i = 0; i < len; i++)
    {
        args[i] = argument[i];
    }
    var format_string = argument[0];
    var localized_format_string_id = argument[len - 1];
    if (global.lang == "ja")
    {
        format_string = scr_84_get_lang_string(localized_format_string_id);
    }
    var str = substringargs(format_string, 1, args);
    return stringset(str);
}

function langopt(arg0, arg1)
{
    return (global.lang == "ja") ? arg1 : arg0;
}
