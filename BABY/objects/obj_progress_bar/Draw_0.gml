if (instance_exists(stove_ref)) {
    var p = stove_ref.cooking_timer / 180;
    var bar_width = 60;
    var bar_height = 8;

    draw_set_color(c_black);
    draw_rectangle(x, y, x + bar_width, y + bar_height, false);

    draw_set_color(c_lime);
    draw_rectangle(x, y, x + bar_width * (1 - p), y + bar_height, false);
}
