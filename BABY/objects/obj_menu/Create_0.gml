menu_options = ["Start", "Credits"];
menu_index   = 0;      // currently highlighted (0 = "Start")
menu_count   = array_length(menu_options);

menu_music_id = audio_play_sound(menu_music_loop, 1, true);