if (paused)
{
if (draw)
    {
    var i, surface;
    for (i = 0; i <= steps; i += 1)
        {
        surface[i] = surface_create(room_width * power(intensity,i),
                                    room_height * power(intensity,i));
        surface_set_target(surface[i]);
        draw_clear_alpha(c_black, 1);
        surface_reset_target();
        }
    surface_set_target(surface[0]);
     draw_surface(application_surface, 0, 0);
    surface_reset_target();
    for (i = 1; i <= steps; i += 1)
        {
        surface_set_target(surface[i]);
        draw_surface_ext(surface[i-1], 0, 0, intensity, intensity, 0, c_white, 1);
        surface_reset_target();
        }
    for (i = steps - 1; i >= 0; i -= 1)
        {
        surface_set_target(surface[i]);
         draw_surface_ext(surface[i+1], 0, 0, 1 / intensity, 1 / intensity, 0, c_white, 1);
        surface_reset_target();
        }
    spr_PAUSE = sprite_create_from_surface(surface[0], 0, 0,
                                            room_width, room_height,
                                            false, false,
                                            0, 0);
    for (i = 0; i <= steps; i += 1)
        {
        surface_free(surface[i])
        }
    draw = false;
    instance_deactivate_all(true);
    }
    draw_sprite(spr_PAUSE, 0, 0, 0);
    draw_set_color(c_white);
    draw_text_color(room_width / 2, room_height / 2,
                    "PAUSED",
                    c_lime, c_lime, c_green, c_green, 1);
}
