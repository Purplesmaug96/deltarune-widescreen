if (y < (cameray() + 20))
{
    y = cameray() + 20;
}
if (y > (cameray() + 460))
{
    y = cameray() + 460;
}
difficulty = 1;
times = 0;
activetimer = 0;
grazed = 0;
grazepoints = 5;
timepoints = 5;
target = 0;
dont = 1;
inv = 120;
damage = 124;
active = 0;
image_alpha = 0;
if (!instance_exists(obj_heart))
{
    instance_destroy();
}
type = 0;
