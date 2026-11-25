// TODO: Should this be a draw end?
// Its a draw end currently so it will be not impossible to draw over but also can't be an accident

var xx = raw_camerax();
var yy = raw_cameray();
var ww = camerawidth();
var hh = cameraheight();
if ((xx < 0) || (yy < 0) || ((xx + ww) > room_width) || ((yy + hh) > room_height)) {
    if (scr_debug()) {
        draw_set_colour(c_lime);
        d_rectangle_outlined(0, 0, room_width - 1, room_height - 1, 1);
    }
}
