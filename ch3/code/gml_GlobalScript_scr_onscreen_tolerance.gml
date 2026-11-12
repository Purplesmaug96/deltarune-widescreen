function scr_onscreen_tolerance(arg0, arg1)
{
    obj = arg0;
    spacer = arg1;
    if ((obj.x + obj.sprite_width + spacer) < raw_camerax() || (obj.x - spacer) > (raw_camerax() + global.widescreen_width) || (obj.y + obj.sprite_height + spacer) < raw_cameray() || (obj.y - spacer) > (raw_cameray() + 480))
    {
        return false;
    }
    else
    {
        return true;
    }
}
