if (darken == 1)
{
    with (obj_heroparent)
    {
        darkify = 1;
    }
    if (darkamt < 15)
    {
        darkamt += 1;
    }
    with (obj_whiteedge)
    {
        image_alpha = obj_darkener.darkamt / 15;
    }
}
if (darken == 0)
{
    with (obj_growtangle)
    {
        growcon = 3;
    }
    with (obj_heroparent)
    {
        darkify = 0;
    }
    if (darkamt > 0)
    {
        darkamt -= 1;
    }
    with (obj_whiteedge)
    {
        image_alpha = obj_darkener.darkamt / 15;
    }
    if (darkamt <= 0)
    {
        instance_destroy();
    }
}
draw_set_alpha(darkamt / 20);
draw_set_color(c_black);
draw_rectangle(raw_camerax(), raw_cameray(), raw_camerax() + camerawidth(), raw_cameray() + cameraheight(), false);
draw_set_alpha(1);
