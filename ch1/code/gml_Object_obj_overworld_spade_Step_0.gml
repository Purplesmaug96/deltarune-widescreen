timer += 1;
if (timer >= 2)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
    }
    if (image_alpha == 1)
    {
        active = 1;
    }
}
if (room == room_dark_chase2)
{
    if (x > 680)
    {
        instance_destroy();
    }
    if (x < -40)
    {
        instance_destroy();
    }
}
else if (room == room_dark_chase1)
{
    // TODO: This might affect bullet density
    if (x >= (raw_camerax() + camerawidth()))
    {
        x -= camerawidth() + 100;
    }
    if (x <= (raw_camerax() - sprite_width))
    {
        x += camerawidth() + 100;
    }
}
else scr_destroyoutside();
