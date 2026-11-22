if (bgdraw == 1)
{
    rate *= (20/21);
    if (rate <= 0.01)
    {
        rate = 0;
    }
    rate_alpha -= 0.02;
    draw_sprite_ext(spr_krisandsusie_fall, 0, camerax() + 160, (cameray() - (rate * 84)) + 200, rate, rate, 0, c_white, rate_alpha);
}
draw_self();
