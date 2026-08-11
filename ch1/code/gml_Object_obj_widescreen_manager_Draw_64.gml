if (scr_debug()) {
    draw_set_font(fnt_comicsans);
    draw_set_colour(c_red);
    draw_text(0, 0, "DELTARUNE Chapter " + string(global.chapter) + "Widescreen ver " + global.widescreen_mod_ver + "\nwidescreen_width: " + string(global.widescreen_width) + "\nwidescreen_mult: " + string(global.widescreen_mult) + "\nwidescreen_div: " + string(global.widescreen_div) + "\nwidescreen_diff: " + string(global.widescreen_diff) + "\nTarget FPS: " + string(global.target_fps) + "\nFPS: " + string(fps));
}