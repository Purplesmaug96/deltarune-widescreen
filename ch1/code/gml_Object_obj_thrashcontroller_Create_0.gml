global.flag[220] = -1;
global.flag[221] = -1;
global.flag[222] = -1;
global.flag[223] = 0;
global.flag[224] = 0;
global.flag[225] = 0;
for (i = 0; i < 32; i += 1)
{
    precolor[i] = make_color_hsv(i * 8, 255, 255);
}
statcolor[0] = merge_color(c_lime, c_white, 0.5);
statcolor[1] = merge_color(c_yellow, c_white, 0.5);
statcolor[2] = merge_color(c_fuchsia, c_white, 0.6);
statcolor[3] = merge_color(c_red, c_white, 0.3);
statcolor[4] = merge_color(c_blue, c_white, 0.5);
statcolor[5] = merge_color(c_purple, c_white, 0.4);
logocon = 1;
logoalpha = 0;
introtimer = 0;
textalpha1 = 0;
textalpha2 = 0;
malpha = 0;
buffer1 = 0;
buffer2 = 0;
con = 0;
menu = 0;
ended = 0;
colorchange = 0;
colorbuffer = 0;
for (i = 0; i < 6; i += 1)
{
    stat[i] = 0;
}
menutext1[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_49_0"); // HEAD:
menutext1[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_50_0"); // BODY:
menutext1[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_51_0"); // SHOE:
menutext1[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_52_0"); // END
menutext1[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_53_0"); // HEADCOLOR
menutext1[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_54_0"); // BODYCOLOR
menutext1[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_55_0"); // SHOECOLOR
menutext1[1][3] = " ";
menutext2[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_59_0"); // LASER
stat1[0][0] = 5;
stat2[0][0] = 4;
menutext2[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_61_0"); // SWORD
stat1[0][1] = 1;
stat2[0][1] = 0;
menutext2[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_63_0"); // FLAME
stat1[0][2] = 2;
stat2[0][2] = 3;
menutext2[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_65_0"); // DUCK
stat1[0][3] = 6;
stat2[0][3] = 6;
menutext2[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_68_0"); // PLAIN
stat1[1][0] = 0;
stat2[1][0] = 2;
menutext2[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_70_0"); // WHEEL
stat1[1][1] = 4;
stat2[1][1] = 1;
menutext2[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_72_0"); // TANK
stat1[1][2] = 3;
stat2[1][2] = 5;
menutext2[1][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_74_0"); // DUCK
stat1[1][3] = 6;
stat2[1][3] = 6;
menutext2[2][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_77_0"); // SNEAK
stat1[2][0] = 1;
stat2[2][0] = 2;
menutext2[2][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_79_0"); // A.WHL
stat1[2][1] = 3;
stat2[2][1] = 4;
menutext2[2][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_81_0"); // TREAD
stat1[2][2] = 0;
stat2[2][2] = 5;
menutext2[2][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_83_0"); // DUCK
stat1[2][3] = 6;
stat2[2][3] = 6;
assetdesc[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_88_0"); // An enchanting#gun with an air#of mysticism.
assetdesc[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_89_0"); // A tomboyish#blade reserved#for upscale#events.
assetdesc[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_90_0"); // It's burning#with desire!#Sure to make#you blush!
assetdesc[0][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_91_0"); // Garbage. You're#going to lose#points.
assetdesc[1][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_93_0"); // Streamlined#chassis for an#elegant#thrashing.
assetdesc[1][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_94_0"); // A fast chassis#for tomboyish#thrashing.
assetdesc[1][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_95_0"); // Chassis for gun's#lovers. The#cannon is highly#kissable.
assetdesc[1][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_96_0"); // Just looking at#this is making#you lose points.
assetdesc[2][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_99_0"); // Sporty shoes for#the athletic#thrashing machine#in your life.
assetdesc[2][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_100_0"); // Attractive#wheels, leading#the way!
assetdesc[2][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_101_0"); // Weaponized treads#for razing#sophisticated#dinner parties.
assetdesc[2][3] = scr_84_get_lang_string("obj_thrashcontroller_slash_Create_0_gml_102_0"); // You're going to#lose points.
menucoord1y = 0;
menucoord1x = 0;
menucoord2[0] = 0;
menucoord2[1] = 0;
menucoord2[2] = 0;
endcoord = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
ww = camerawidth();
hh = cameraheight();
thrash = instance_create(xx + (ww / 2.5), yy + (hh / 3), obj_thrashmachine);
with (thrash)
{
    a = 0;
}

enum e__VW
{
    XView,
    YView,
    WView,
    HView,
    Angle,
    HBorder,
    VBorder,
    HSpeed,
    VSpeed,
    Object,
    Visible,
    XPort,
    YPort,
    WPort,
    HPort,
    Camera,
    SurfaceID
}
