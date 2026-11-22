function scr_outside_camera(arg0)
{
    var _offcamera = 0;
    var rightx = x + sprite_width;
    var leftx = x;
    var bottomy = y + sprite_height;
    var topy = y;
    var xx = raw_camerax();
    var yy = raw_cameray();
    var ww = camerawidth();
    var hh = cameraheight();
    if (x > (xx + ww + arg0))
    {
        _offcamera = 1;
    }
    if (rightx < (xx - arg0))
    {
        _offcamera = 1;
    }
    if (y > (yy + hh + arg0))
    {
        _offcamera = 1;
    }
    if (bottomy < (yy - arg0))
    {
        _offcamera = 1;
    }
    return _offcamera;
}
