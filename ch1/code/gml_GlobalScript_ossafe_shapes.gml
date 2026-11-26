function d_arrow(arg0, arg1, arg2, arg3, arg4)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_arrow(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4);
}

function d_circle(arg0, arg1, arg2, arg3)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_circle(arg0 + off, arg1 + off, arg2, arg3);
}

function d_circle_color(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_circle_color(arg0 + off, arg1 + off, arg2, arg3, arg4, arg5);
}

function d_circle_colour(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_circle_colour(arg0 + off, arg1 + off, arg2, arg3, arg4, arg5);
}

function d_ellipse(arg0, arg1, arg2, arg3, arg4)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_ellipse(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4);
}

function d_ellipse_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_ellipse_color(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_ellipse_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_ellipse_colour(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_line(arg0, arg1, arg2, arg3)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line(arg0 + off, arg1 + off, arg2 + off, arg3 + off);
}

function d_line_color(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line_color(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5);
}

function d_line_colour(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line_colour(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5);
}

function d_line_width(arg0, arg1, arg2, arg3, arg4)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line_width(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4);
}

function d_line_width_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line_width_color(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_line_width_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_line_width_colour(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_point(arg0, arg1)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_point(arg0 + off, arg1 + off);
}

function d_point_color(arg0, arg1, arg2)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_point_color(arg0 + off, arg1 + off, arg2);
}

function d_point_colour(arg0, arg1, arg2)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_point_colour(arg0 + off, arg1 + off, arg2);
}

function d_rectangle(arg0, arg1, arg2, arg3, arg4)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_rectangle(arg0, arg1, arg2 + off, arg3 + off, arg4);
}

function d_rectangle_outlined(arg0, arg1, arg2, arg3, outline)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    var x1 = arg0;
    var x2 = arg2 + off;
    var y1 = arg1;
    var y2 = arg3 + off;
    var half_out = outline / 2;
    
    draw_rectangle(x1 - half_out, y1 - half_out, x1 + half_out, y2 + half_out, false);
    draw_rectangle(x1 - half_out, y1 - half_out, x2 + half_out, y1 + half_out, false);
    draw_rectangle(x1 - half_out, y2 - half_out, x2 + half_out, y2 + half_out, false);
    draw_rectangle(x2 - half_out, y1 - half_out, x2 + half_out, y2 + half_out, false);
}

function d_rectangle_colour_alpha(x1, y1, x2, y2, col1, col2, col3, col4, alpha1, alpha2, alpha3, alpha4, outline) {
    if (outline) {
        draw_primitive_begin(pr_linestrip);
        draw_vertex_colour(x1, y1, col1, alpha1);
        draw_vertex_colour(x2, y1, col2, alpha2);
        draw_vertex_colour(x2, y2, col3, alpha3);
        draw_vertex_colour(x1, y2, col4, alpha4);
        draw_vertex_colour(x1, y1, col1, alpha1); // Close the loop
        draw_primitive_end();
    } else {
        draw_primitive_begin(pr_trianglelist);
        
        // Triangle 1 (Top-Left, Top-Right, Bottom-Left)
        draw_vertex_colour(x1, y1, col1, alpha1);
        draw_vertex_colour(x2, y1, col2, alpha2);
        draw_vertex_colour(x1, y2, col4, alpha4);
        
        // Triangle 2 (Top-Right, Bottom-Right, Bottom-Left)
        draw_vertex_colour(x2, y1, col2, alpha2);
        draw_vertex_colour(x2, y2, col3, alpha3);
        draw_vertex_colour(x1, y2, col4, alpha4);
        
        draw_primitive_end();
    }
}

function d_rectangle_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_rectangle_color(arg0, arg1, arg2 + off, arg3 + off, arg4, arg5, arg6, arg7, arg8);
}

function d_rectangle_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_rectangle_colour(arg0, arg1, arg2 + off, arg3 + off, arg4, arg5, arg6, arg7, arg8);
}

function d_roundrect(arg0, arg1, arg2, arg3, arg4)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4);
}

function d_roundrect_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect_color(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_roundrect_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect_colour(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_roundrect_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect_ext(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6);
}

function d_roundrect_color_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect_color_ext(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6, arg7, arg8);
}

function d_roundrect_colour_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_roundrect_colour_ext(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4, arg5, arg6, arg7, arg8);
}

function d_triangle(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_triangle(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4 + off, arg5 + off, arg6);
}

function d_triangle_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_triangle_color(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4 + off, arg5 + off, arg6, arg7, arg8, arg9);
}

function d_triangle_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_triangle_colour(arg0 + off, arg1 + off, arg2 + off, arg3 + off, arg4 + off, arg5 + off, arg6, arg7, arg8, arg9);
}

function d_path(arg0, arg1, arg2, arg3)
{
    var off = (os_type == os_ps4 || os_type == os_ps5) ? 1 : 0;
    draw_path(arg0, arg1 + off, arg2 + off, arg3);
}
