fountain_index += 0.1;
draw_sprite_ext(spr_cc_fountainbg, fountain_index, 745, 0, 2, 2, 0, c_white, image_alpha);
draw_background_ext(bg_cc_arena, 600, 0, 2, 2, 0, c_white, image_alpha);
if (scr_debug())
{
    var xx = camerax();
    var yy = cameray();
    draw_set_color(c_yellow);
    if (con > 9998)
    {
        if (instance_exists(king))
        {
            draw_text(xx, yy, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_15_0") + string(king.x)));
            draw_text(xx, yy + 30, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_16_0") + string(king.y)));
        }
        draw_text(xx, yy + 70, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_18_0") + string(camerax())));
        draw_text(xx, yy + 100, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_19_0") + string(cameray())));
        draw_text(xx, yy + 130, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_21_0") + string(con)));
        if (instance_exists(k))
        {
            draw_text(xx + 160, yy, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_25_0") + string(k.x)));
            draw_text(xx + 160, yy + 30, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_26_0") + string(k.y)));
        }
        if (instance_exists(s))
        {
            draw_text(xx + 320, yy, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_31_0") + string(s.x)));
            draw_text(xx + 320, yy + 30, string_hash_to_newline(scr_84_get_lang_string("obj_kingcutscene_slash_Draw_0_gml_32_0") + string(s.y)));
        }
    }
}
