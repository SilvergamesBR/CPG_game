if (room == rm_bedroom){
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(16, 16, "Day: " + string(current_game_day));
draw_text(16, 36, "Money: $" + string(money));
draw_text(16, 56, "Popularity: " + string(popularity));

// Positions updated for 5 bars now
var x_base = 16;
var y_base = 100;
var bar_w = 100;
var bar_h = 10;
var spacing = 20;

draw_set_color(c_black);

// Backgrounds for all 5 bars
for (var i = 0; i < 5; i++) {
    draw_rectangle(x_base, y_base + i * spacing, x_base + bar_w, y_base + i * spacing + bar_h, false);
}

// Bars
draw_set_color(c_red);
draw_rectangle(x_base, y_base + 0 * spacing, x_base + bar_w * (health / 100), y_base + 0 * spacing + bar_h, false);

draw_set_color(c_blue);
draw_rectangle(x_base, y_base + 1 * spacing, x_base + bar_w * (sanity / 100), y_base + 1 * spacing + bar_h, false);

draw_set_color(c_green);
draw_rectangle(x_base, y_base + 2 * spacing, x_base + bar_w * (tidiness / 100), y_base + 2 * spacing + bar_h, false);

draw_set_color(c_yellow);
draw_rectangle(x_base, y_base + 3 * spacing, x_base + bar_w * (hygiene / 100), y_base + 3 * spacing + bar_h, false);

draw_set_color(c_orange);
draw_rectangle(x_base, y_base + 4 * spacing, x_base + bar_w * (hunger / 100), y_base + 4 * spacing + bar_h, false);

// Labels
draw_set_color(c_white);
draw_text(x_base + bar_w + 10, y_base + 0 * spacing, "Health");
draw_text(x_base + bar_w + 10, y_base + 1 * spacing, "Sanity");
draw_text(x_base + bar_w + 10, y_base + 2 * spacing, "Tidiness");
draw_text(x_base + bar_w + 10, y_base + 3 * spacing, "Hygiene");
draw_text(x_base + bar_w + 10, y_base + 4 * spacing, "Hunger");
}