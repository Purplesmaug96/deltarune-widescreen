// room_width *= global.widescreen_mult;
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

// TODO: in room_field_start its quite obvious that the depth for this is wrong
if (global.chapter == 1 && global.dynamic_trees) {
    var _layers = layer_get_all();
    
    for (var i = 0; i < array_length(_layers); i++) {
        var _lay_id = _layers[i];
        var _elements = layer_get_all_elements(_lay_id);
        
        for (var j = 0; j < array_length(_elements); j++) {
            var _el = _elements[j];
    
            if (layer_get_element_type(_el) == layerelementtype_tile) {
                var _spr = layer_tile_get_sprite(_el);
    
                if (_spr == bg_treetiles_new || _spr == bg_treetiles) {
                    var _xx = layer_tile_get_x(_el);
                    var _yy = layer_tile_get_y(_el);
                    var _depth = layer_get_depth(_lay_id);
    
                    var _inst = instance_create_depth(_xx, _yy, _depth, obj_blocktree_bg);
                    _inst.image_xscale = layer_tile_get_xscale(_el);
                    _inst.image_yscale = layer_tile_get_yscale(_el);
                    _inst.image_blend = layer_tile_get_blend(_el);
                    _inst.image_alpha = layer_tile_get_alpha(_el);
    
                    layer_tile_destroy(_el);
                }
            }
        }
    }
}
