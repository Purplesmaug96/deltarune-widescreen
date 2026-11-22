function scr_destroyoutside()
{
    if (global.mnfight != 2 || scr_outside_camera())
    {
        instance_destroy();
    }
}
