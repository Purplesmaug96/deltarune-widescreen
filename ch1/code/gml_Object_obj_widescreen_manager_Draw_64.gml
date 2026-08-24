if (scr_debug()) {
    draw_set_font(fnt_comicsans);
    draw_set_colour(c_red);
    draw_text(0, 0, "DELTARUNE Chapter " + string(global.chapter) + " Widescreen ver " + global.widescreen_mod_ver + "\nRoom: " + room_get_name(room) + "\ncamerax: " + string(camerax()) + "\ncameray: " + string(cameray()) + "\nraw_camerax: " + string(raw_camerax()) + "\nraw_cameray: " + string(raw_cameray()) + "\nwidescreen_width: " + string(global.widescreen_width) + "\nwidescreen_mult: " + string(global.widescreen_mult) + "\nwidescreen_div: " + string(global.widescreen_div) + "\nwidescreen_diff: " + string(global.widescreen_diff) + "\nTarget FPS: " + string(global.target_fps) + "\nFPS: " + string(fps));
    
    with (all) {
        if (object_index == obj_widescreen_manager) continue; 
        
        var _cam = view_camera[0];
        var _cam_x = camera_get_view_x(_cam);
        var _cam_y = camera_get_view_y(_cam);
        var _cam_w = camera_get_view_width(_cam);
        var _cam_h = camera_get_view_height(_cam);
        
        var _gui_w = display_get_gui_width();
        var _gui_h = display_get_gui_height();
        
        var _gui_x = (x - _cam_x) * (_gui_w / _cam_w);
        var _gui_y = (y - _cam_y) * (_gui_h / _cam_h);
        
        var _gui_mx = (mouse_x - _cam_x) * (_gui_w / _cam_w);
        var _gui_my = (mouse_y - _cam_y) * (_gui_h / _cam_h);
        
        var mouse_collision = point_in_rectangle(_gui_mx, _gui_my, _gui_x - 5, _gui_y - 5, _gui_x + 5, _gui_y + 5);
        
        draw_set_color(sprite_index == -1 ? c_yellow : c_red);
        draw_rectangle(_gui_x - 5, _gui_y - 5, _gui_x + 5, _gui_y + 5, !mouse_collision);
        
        if (mouse_collision) {
            draw_set_color(c_white);
            var _obj_name = object_get_name(object_index);
            draw_text(_gui_x, _gui_y - 15, _obj_name + " (index " + string(object_index) + ", " + string(id) + ")");
        }
    }
    
    var _gui_mx = (mouse_x - _cam_x) * (_gui_w / _cam_w);
    var _gui_my = (mouse_y - _cam_y) * (_gui_h / _cam_h);
    
    draw_set_colour(merge_colour(c_green, c_white));
    draw_rectangle(_gui_mx, _gui_my, _gui_mx + 10, _gui_my + 10, false);
}