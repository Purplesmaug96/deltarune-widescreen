function scr_84_draw_text_outline(arg0, arg1, arg2)
{
    var scale = (event_type == ev_draw && event_number == ev_gui) ? (display_get_width() / global.widescreen_width) : 1;
    var xx = arg0 * scale;
    var yy = arg1 * scale;
    var str = arg2;
    var __txtcolor__ = draw_get_color();
    draw_set_colour(c_black);
    draw_text_transformed(xx - scale, yy - scale, str, scale, scale, 0);
    draw_text_transformed(xx + scale, yy - scale, str, scale, scale, 0);
    draw_text_transformed(xx - scale, yy + scale, str, scale, scale, 0);
    draw_text_transformed(xx + scale, yy + scale, str, scale, scale, 0);
    draw_set_colour(__txtcolor__);
    draw_text_transformed(xx, yy, str, scale, scale, 0);
}
