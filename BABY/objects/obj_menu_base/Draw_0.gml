for (var i = 0; i < array_length(options); i++) {
    draw_text(x, y + i * 20, string(i == current_index ? "> " : "") + string(i));
}
