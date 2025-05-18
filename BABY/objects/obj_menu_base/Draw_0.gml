draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (var i = 0; i < array_length(options); i++) {
    var prefix = (i == current_index) ? "> " : "  ";
    draw_text(x, y + i * 20, prefix + "Opção " + string(i+1));
}