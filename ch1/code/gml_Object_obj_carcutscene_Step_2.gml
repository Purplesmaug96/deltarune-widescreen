if (dhaver == 1)
{
    with (myd)
    {
        writingx = camerax() + 40;
        writingy = cameray() + 20;
    }
}
if (v == 1)
{
    camerax_set(global.widescreen_half_diff + c.x - vx);
    cameray_set(c.y - vy);
}
