if (i_ex(obj_choicer_neo))
{
    exit;
}
if (i_ex(obj_plat_player) && obj_plat_player.targetmode)
{
    image_alpha = 0;
}
else
{
    image_alpha = 1;
}
if (global.pause_plat == 2)
{
    with (mywriter)
    {
        scr_pause_alarms();
    }
}
else if (instance_exists(mywriter) && !skippable && mywriter.reachedend)
{
    if (delay >= 0)
    {
        delay--;
    }
}
with (mywriter)
{
    image_alpha = other.image_alpha;
}
with (myface)
{
    image_alpha = other.image_alpha;
}
if (small)
{
    boxheight = 0.5;
}
else
{
    boxheight = 1.5;
}
if (active == 1)
{
    var _cx = camerax();
    var _cy = cameray();
    if (zurasu == 1 && zurasucon > 0)
    {
        if (zurasucon == 2)
        {
            if (instance_exists(mywriter))
            {
                mywriter.writingx = remwriterx + _cx;
                mywriter.writingy = remwritery + _cy;
                if (global.fc != 0)
                {
                    obj_face.x = remfacex + _cx;
                    obj_face.y = remfacey + _cy;
                    mywriter.writingx += 58 * f;
                }
            }
            if (remfacex == 0)
            {
                if (global.fc != 0)
                {
                    remfacex = obj_face.x - _cx;
                    remfacey = obj_face.y - _cy;
                }
            }
        }
    }
    var ymod = 0;
    if (side == 1)
    {
        ymod = 155;
    }
    var cxx = _cx + xoff;
    var cyy = _cy + yoff;
    if (i_ex(mywriter))
    {
        if (mywriter.reachedend && delay == -1)
        {
            if (mywriter.msgno < totalmsg)
            {
                if (paused)
                {
                    _paused_invisible = true;
                    with (mywriter)
                    {
                        image_alpha = 0;
                    }
                    with (obj_face)
                    {
                        visible = 0;
                    }
                }
                else
                {
                    with (mywriter)
                    {
                        image_alpha = 1;
                    }
                    with (obj_face)
                    {
                        scr_delay_var("visible", 1, 1);
                    }
                    _paused_invisible = false;
                    with (mywriter)
                    {
                        scr_nextmsg();
                    }
                    delay = getdelay(mywriter.msgno);
                    msgno = mywriter.msgno;
                }
            }
            else
            {
                with (mywriter)
                {
                    instance_destroy();
                }
                with (obj_smallface)
                {
                    instance_destroy();
                }
            }
        }
    }
    if (drawbox && !_paused_invisible)
    {
        if (global.tempflag[19] == 0)
        {
            xxx = _cx + xoff;
            yyy = _cy + yoff;
            if (global.darkzone == 0)
            {
                var sidemod = side * 155;
                var boxwidth_real = 288;
                if (boxwidth != -1)
                {
                    boxwidth_real = boxwidth;
                }
                draw_set_color(c_white);
                draw_rectangle(xxx + 16 - global.widescreen_half_diff, yyy + 5 + sidemod, xxx + 16 + boxwidth_real + global.widescreen_half_diff, ((yyy + 80) - 54) + (18 * boxheight) + sidemod, false);
                draw_set_color(c_black);
                draw_rectangle(xxx + 19 - global.widescreen_half_diff, yyy + 8 + sidemod, xxx + 13 + boxwidth_real + global.widescreen_half_diff, ((yyy + 77) - 54) + (18 * boxheight) + sidemod, false);
            }
            else if (global.darkzone == 1 && image_alpha > 0 && draw_bg)
            {
                var sidemod = side * 380;
                var hei = 100;
                if (side == 1)
                {
                    if (small)
                    {
                        sidemod += (50 * side);
                    }
                    if (obj_darkcontroller.charcon == 1 || small)
                    {
                        sidemod = sidemod - 50;
                        hei += 50;
                    }
                    else
                    {
                    }
                }
                draw_set_color(c_black);
                if (global.fc != 0 && i_ex(obj_face) && obj_face.nowface == global.fc && obj_face.facechange <= 1 && obj_face.visible)
                {
                    var wid = 110;
                    var _yoff = 20;
                    if (side == 1 && small && obj_darkcontroller.charcon == 1)
                    {
                        _yoff = 60;
                    }
                    if (side == 0)
                    {
                        draw_sprite_ext(spr_pxwhite, 0, xxx - global.widescreen_half_diff, yyy + sidemod, wid + global.widescreen_half_diff, hei + _yoff, 0, c_black, 1);
                        draw_sprite_ext(spr_gradient_triangle_dialoguer_plat, 0, xxx + wid, yyy + sidemod + hei, 1, -_yoff / 20, 0, c_black, 1);
                    }
                    else
                    {
                        draw_sprite_ext(spr_pxwhite, 0, xxx - global.widescreen_half_diff, (yyy + sidemod) - _yoff, wid + global.widescreen_half_diff, hei + _yoff, 0, c_black, 1);
                        draw_sprite_ext(spr_gradient_triangle_dialoguer_plat, 0, xxx + wid, yyy + sidemod, 1, _yoff / 20, 0, c_black, 1);
                    }
                    draw_sprite_ext(spr_gradient20, 0, xxx + wid, yyy + sidemod, hei / 20, 2, 270, c_black, 1);
                }
                draw_sprite_ext(spr_pxwhite, 0, xxx, yyy + sidemod, global.widescreen_width, hei, 0, c_black, 0.7);
                draw_set_color(c_white);
            }
        }
    }
    if (!i_ex(mywriter))
    {
        if (stay > 0)
        {
            stayer = instance_create_depth(x, y, depth + 1, obj_writer_stay);
            stayer.side = side;
            stayer.xoff = xoff;
            stayer.yoff = yoff;
            stayer.boxwidth = boxwidth;
            stayer.boxheight = boxheight;
            stayer.cur_jewel = cur_jewel;
            stayer.doom = stay;
        }
        instance_destroy();
    }
    else if (global.tempflag[19] == 1)
    {
        with (mywriter)
        {
            showval(x, y - 8, "msgno");
        }
    }
}
