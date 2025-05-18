// If illuminated flag is set, draw a translucent black rectangle over the whole screen
if (!global.illuminated) {
    draw_set_color(c_black);
    draw_set_alpha(0.4);  
    draw_rectangle(
        0, 
        0, 
        display_get_gui_width(), 
        display_get_gui_height(), 
        false
    );
    draw_set_alpha(1);     // reset alpha back to fully opaque for subsequent draws
}