if (keyboard_check_pressed(vk_down)) {
    current_index = (current_index + 1) mod array_length(options);
}
if (keyboard_check_pressed(vk_up)) {
    current_index = (current_index - 1 + array_length(options)) mod array_length(options);
}

if (keyboard_check_pressed(vk_escape)) {
    instance_destroy(); // Fecha o menu
    global.menu_active = false;
}

if (keyboard_check_pressed(vk_enter)) {
    var option = options[current_index];
    if (is_callable(option)) option();
}
