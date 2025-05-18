menu_music_id = audio_play_sound(menu_music_loop, 1, true);

base_x    = room_width  * 0.2;
base_y    = room_height * 0.2;
spacing   = 132;


instance_create_layer(base_x,base_y,"Instances", obj_game_title);
instance_create_layer(base_x,base_y+ (1*spacing),"Instances", obj_start_btn);
instance_create_layer(base_x,base_y+ (2*spacing),"Instances", obj_controls_btn);
instance_create_layer(base_x,base_y+ (3*spacing),"Instances", obj_credits_btn);