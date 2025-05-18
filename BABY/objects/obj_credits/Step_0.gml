if (keyboard_check_pressed(vk_escape)) {
	instance_destroy();
    room_goto(rm_menu);
}