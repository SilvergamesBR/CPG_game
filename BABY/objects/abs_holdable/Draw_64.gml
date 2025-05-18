if (isHeld && was_holding) {
    // background
    draw_set_color(c_black);
    draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, false);
    // fill based on charge
    draw_set_color(c_lime);
    draw_rectangle(bar_x, bar_y, bar_x + (bar_w * charge), bar_y + bar_h, false);
    // border
    draw_set_color(c_white);
    draw_rectangle(bar_x, bar_y, bar_x + bar_w, bar_y + bar_h, true);
}