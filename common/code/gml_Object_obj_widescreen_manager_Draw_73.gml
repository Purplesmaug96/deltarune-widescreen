// TODO: Should this be a draw end?
// Its a draw end currently so it will be not impossible to draw over but also can't be an accident

var xx = raw_camerax();
var yy = raw_cameray();
var ww = camerawidth();
var hh = cameraheight();

var tile_size = 40;
var fade_size = 2;
var fade_width = tile_size * fade_size;

var c1 = xx < 0;
var c2 = yy < 0;
var c3 = (xx + ww) > room_width;
var c4 = (yy + hh) > room_height;

if (c1 || c2 || c3 || c4) {
    var fade;
    switch (room) {
        default:
            fade = true;
            break;
    }

    if (fade) {
        if (c1) {
            var fl = max(xx, -fade_width);
            if (xx < fl) {
                d_rectangle_colour_alpha(xx, yy, fl, yy + hh, c_black, c_black, c_black, c_black, 1, 1, 1, 1, false);
            }
            d_rectangle_colour_alpha(fl, yy, 0, yy + hh, c_black, c_black, c_black, c_black, 1, 0, 0, 1, false);
        }

        if (c2) {
            var ft = max(yy, -fade_width);
            if (yy < ft) {
                d_rectangle_colour_alpha(xx, yy, xx + ww, ft, c_black, c_black, c_black, c_black, 1, 1, 1, 1, false);
            }
            d_rectangle_colour_alpha(xx, ft, xx + ww, 0, c_black, c_black, c_black, c_black, 1, 1, 0, 0, false);
        }

        if (c3) {
            var fr = min(xx + ww, room_width + fade_width);
            if (fr < xx + ww) {
                d_rectangle_colour_alpha(fr, yy, xx + ww, yy + hh, c_black, c_black, c_black, c_black, 1, 1, 1, 1, false);
            }
            d_rectangle_colour_alpha(room_width, yy, fr, yy + hh, c_black, c_black, c_black, c_black, 0, 1, 1, 0, false);
        }

        if (c4) {
            var fb = min(yy + hh, room_height + fade_width);
            if (fb < yy + hh) {
                d_rectangle_colour_alpha(xx, fb, xx + ww, yy + hh, c_black, c_black, c_black, c_black, 1, 1, 1, 1, false);
            }
            d_rectangle_colour_alpha(xx, room_height, xx + ww, fb, c_black, c_black, c_black, c_black, 0, 0, 1, 1, false);
        }
    }

    if (scr_debug()) {
        draw_set_colour(c_lime);
        d_rectangle_outlined(0, 0, room_width - 1, room_height - 1, 1);
    }
}
