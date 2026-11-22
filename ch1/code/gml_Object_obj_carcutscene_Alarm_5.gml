global.typer = 8;
global.msg[0] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_2_0"); // * Kris..^1. It is a beautiful day today^1, is it not^5?%
global.msg[1] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_3_0"); // * I hope it stays this way when ASRIEL visits next week^5.%
global.msg[2] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_4_0"); // * But I wonder..^1.&* After the excitement of university..^5.%
global.msg[3] = scr_84_get_lang_string("obj_carcutscene_slash_Alarm_5_gml_5_0"); // * Will he still enjoy coming home to this little town...?^9 ^9 %%
myd = instance_create(camerax() + 40, cameray() + 40, obj_writer);
with (myd)
{
    skippable = 0;
}
with (myd)
{
    persistent = 1;
}
dhaver = 1;
