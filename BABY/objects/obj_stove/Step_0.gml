event_user(0)

if (cooking_timer > 0) {
    cooking_timer -= 0.1;

    if (cooking_timer <= 0) {
        // Cooking finished!
        if (instance_exists(progress_bar)) {
            instance_destroy(progress_bar);
            progress_bar = noone;
        }
    }
}

if(stolen == true){
	image_blend = c_fuchsia;
}

if(sabotaged == true){
	image_blend = c_lime;	
}
