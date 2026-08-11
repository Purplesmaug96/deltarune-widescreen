room_width *= global.widescreen_mult;
for (var i = 0; i < 8; i++) {
    if (view_enabled && view_visible[i])
    {
        var current_view_w = camera_get_view_width(view_camera[i]);
        var current_view_h = camera_get_view_height(view_camera[i]);
        camera_set_view_size(view_camera[i], current_view_w * global.widescreen_mult, current_view_h);
        view_wport[i] = view_wport[i] * global.widescreen_mult;
    }
}
if (global.target_fps != 30) {
    game_set_speed(global.target_fps, gamespeed_fps);
    room_speed = global.target_fps;
}
// TODO: There's probably a better way to do this, but i dont wanna find it
if (room == room_cc_joker) {
    camera_set_view_pos(view_camera[0], camerax(), cameray());
}