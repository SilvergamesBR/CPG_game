global.spawn_increase_rate += 0.0001;

spawn_per_sec += global.spawn_increase_rate;

spawn_chance_step = spawn_per_sec / game_get_speed(gamespeed_fps);

if (global.mistakes > 3){
	global.spawn_increase_rate = 0;
	spawn_per_sec = 0;
	spawn_chance_step = 0;
	instance_deactivate_all(true);
	event_user(0);
}

if (random(1) < spawn_chance_step) {
	spawn_per_sec = 0.1;
    var sx = irandom_range(64, room_width-64);
    var sy = irandom_range(64, room_height-64);

    instance_create_layer(sx, sy, spawn_layer, spawn_obj);
}

if (keyboard_check_pressed(vk_escape) and enableQuit == true) {
    room_goto(rm_menu);
}
