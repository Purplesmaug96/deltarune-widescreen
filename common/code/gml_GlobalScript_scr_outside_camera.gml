function scr_outside_camera_verbose(leftx, rightx, topy, bottomy, arg0 = 0)
{
    var xx = raw_camerax();
    var yy = raw_cameray();
    var ww = camerawidth();
    var hh = cameraheight();
    if (x > (xx + ww + arg0))
    {
        return true;
    }
    if (rightx < (xx - arg0))
    {
        return true;
    }
    if (y > (yy + hh + arg0))
    {
        return true;
    }
    if (bottomy < (yy - arg0))
    {
        return true;
    }
    return false;
}


function scr_outside_camera(arg0 = 0)
{
    var rightx = x + sprite_width;
    var leftx = x;
    var bottomy = y + sprite_height;
    var topy = y;

    return scr_outside_camera_verbose(leftx, rightx, topy, bottomy, arg0);
}
