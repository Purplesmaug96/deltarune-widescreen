if (siner > 2)
{
    draw_background_ext(IMAGE_DEPTH, 160 + global.widescreen_quarter_diff, 120, 1 + xstretch, 1 + ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_background_ext(IMAGE_DEPTH, 160 + global.widescreen_quarter_diff, 120, -1 - xstretch, 1 + ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_background_ext(IMAGE_DEPTH, 160 + global.widescreen_quarter_diff, 120, -1 - xstretch, -1 - ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
    draw_background_ext(IMAGE_DEPTH, 160 + global.widescreen_quarter_diff, 120, 1 + xstretch, -1 - ystretch, 0, image_blend, ((0.2 + alpha) - o_insurance) + b_insurance);
}
