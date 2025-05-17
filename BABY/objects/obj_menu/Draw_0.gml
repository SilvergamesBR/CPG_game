var x0 = room_width  * 0.5;
var y0 = room_height * 0.4;
var spacing = 32;

// Draw each option
for (var i = 0; i < menu_count; i++) {
    // Highlight the selected option
    if (i == menu_index) {
        draw_set_color(c_yellow);
    } else {
        draw_set_color(c_white);
    }
    //draw_set_font(fnt_menu);  // assume you’ve assigned a font asset
    draw_text(x0, y0 + i * spacing, menu_options[i]);
}