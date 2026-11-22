siner = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
offx = 0;
if (global.lang == "ja")
{
    sprite_index = spr_ja_fieldmuslogo;
}
x = (camerax() + 180) - offx;
y = cameray() + 100;
with (obj_mainchara)
{
    bg = 1;
}
