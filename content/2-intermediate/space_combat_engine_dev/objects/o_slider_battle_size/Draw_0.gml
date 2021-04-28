draw_self();
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y - sprite_get_yoffset(sprite_index));
draw_sprite(s_slider_knob, 0, x + sprite_width*value, y);


draw_set_font(font0);
draw_set_color(c_white);
draw_text(x-100, y-10, "Battle size: ");
draw_text(x+100, y-10, string(global.combat_size) + " Ships");