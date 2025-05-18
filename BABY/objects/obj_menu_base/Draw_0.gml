draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


for (var i = 0; i < array_length(options); i++) {
    if (i == current_index) {
        draw_set_color(c_yellow); // highlight
    } else {
        draw_set_color(c_white); // normal
    }
    var prefix = (i == current_index) ? "> " : "  ";
    draw_text(x, y + i * 20, prefix + option_labels[i]);
}
draw_set_color(c_white); // reset color after drawing