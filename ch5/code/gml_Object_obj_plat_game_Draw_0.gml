if (instance_exists(obj_plat_player) && obj_plat_player.targetmode)
{
    if (instance_exists(obj_plat_foreground_writer))
    {
        draw_sprite_ext(spr_pxwhite, 0, raw_camerax(), raw_cameray(), camerawidth(), cameraheight(), 0, c_black, 0.3 * obj_plat_foreground_writer.alphaer);
    }
}
