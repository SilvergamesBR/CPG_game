// Assume menu_options, menu_index, menu_count as before
var base_x    = room_width  * 0.5;
var base_y    = room_height * 0.4;
var spacing   = 32;

var hovered   = -1;

for (var i = 0; i < menu_count; i++) {
    var text_str = menu_options[i];
    var tx        = base_x;
    var ty        = base_y + i * spacing;
    var w         = string_width(text_str);
    var h         = string_height(text_str);
    
    // Rectangle: (tx, ty) → (tx + w, ty + h)
    if (point_in_rectangle(mouse_x, mouse_y, tx, ty, tx + w, ty + h)) {
        hovered = i;
        break;
    }
}
if (hovered != -1) {
    menu_index = hovered; // update selection on hover
}

if (hovered != -1 && mouse_check_button_pressed(mb_left)) {
    switch (hovered) {
        case 0:
            room_goto(rm_bedroom);
            break;
        case 1:
            room_goto(rm_credits);
            break;
		case 2:
			room_goto(rm_controls);
    }
}

// Move selection up
if (keyboard_check_pressed(vk_up) or keyboard_check(ord("W"))) {
    menu_index = (menu_index - 1 + menu_count) mod menu_count;
}

// Move selection down
if (keyboard_check_pressed(vk_down) or keyboard_check(ord("S"))) {
    menu_index = (menu_index + 1) mod menu_count;
}

// Confirm selection
if keyboard_check_pressed(vk_enter) {
    switch (menu_index) {
        case 0:
            // Start the game: go to room_game  
            room_goto(rm_bedroom);
            break;
        case 1:
            // Show credits: go to room_credits  
            room_goto(rm_credits);
		case 2:
			room_goto(rm_controls);
            break;
    }
}