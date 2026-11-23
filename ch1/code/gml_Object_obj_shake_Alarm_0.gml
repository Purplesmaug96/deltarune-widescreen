if (global.flag[12] == 0)
{
    camerax_set(cx + (shakex * shakesign));
    cameray_set(cy + (shakey * shakesign));
}
if (permashake == 0)
{
    if (shakex > 0)
    {
        shakex -= 1;
    }
    if (shakey > 0)
    {
        shakey -= 1;
    }
}
shakesign = -shakesign;
alarm[0] = shakespeed;
if (shakex == 0 && shakey == 0)
{
    instance_destroy();
}
