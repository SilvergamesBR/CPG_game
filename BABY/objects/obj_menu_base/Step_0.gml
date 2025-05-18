if (keyboard_check_pressed(ord("S"))) {
    current_index = (current_index + 1) mod array_length(options);
}
if (keyboard_check_pressed(ord("W"))) {
    current_index = (current_index - 1 + array_length(options)) mod array_length(options);
}

if (keyboard_check_pressed(vk_escape)) {

    instance_destroy(); // Fecha o menu
	global.menu_active = false
	global.interact_cooldown = 10;

}


if (keyboard_check_pressed(ord("E"))) {
    var action = options[current_index];
    if (is_callable(action)) action(); // This will call select_tomato(), etc.

	    instance_destroy(); // Fecha o menu
	global.menu_active = false
	global.interact_cooldown = 10;
}