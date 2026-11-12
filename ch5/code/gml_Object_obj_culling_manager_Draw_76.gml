var __cx = 0;
var __cy = 0;
if (instance_exists(obj_plat_camera))
{
    __cx = obj_plat_camera.x - (global.widescreen_width / 2);
    __cy = obj_plat_camera.y - 240;
}
else
{
    __cx = camera_get_view_x(view_camera[0]);
    __cy = camera_get_view_y(view_camera[0]);
}
with (obj_culled_object)
{
    if (performs_culling_checks)
    {
        if ((bbox_right + max(cull_buffer, cull_buffer_right)) < __cx || (bbox_left - max(cull_buffer, cull_buffer_left)) > (__cx + global.widescreen_width) || (bbox_bottom + max(cull_buffer, cull_buffer_bottom)) < __cy || (bbox_top - max(cull_buffer, cull_buffer_top)) > (__cy + 480))
        {
            is_culled = true;
        }
        else
        {
            is_culled = false;
        }
    }
}
with (obj_fusuma_door)
{
    if ((bbox_right + max(cull_buffer, cull_buffer_right)) < __cx || (bbox_left - max(cull_buffer, cull_buffer_left)) > (__cx + global.widescreen_width) || (bbox_bottom + max(cull_buffer, cull_buffer_bottom)) < __cy || (bbox_top - max(cull_buffer, cull_buffer_top)) > (__cy + 480))
    {
        is_culled = true;
    }
    else
    {
        is_culled = false;
    }
}
with (obj_overworld_foxbullet)
{
    if ((bbox_right + max(cull_buffer, cull_buffer_right)) < __cx || (bbox_left - max(cull_buffer, cull_buffer_left)) > (__cx + global.widescreen_width) || (bbox_bottom + max(cull_buffer, cull_buffer_bottom)) < __cy || (bbox_top - max(cull_buffer, cull_buffer_top)) > (__cy + 480))
    {
        is_culled = true;
    }
    else
    {
        is_culled = false;
    }
}
