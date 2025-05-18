if (cooking_timer <= 0) {
    var all_ready = true;
    var keys = variable_struct_get_names(ingredients);
	
}

if (cooking_timer > 0) {
    cooking_timer -= 0.1;

    if (cooking_timer <= 0) {
		instance_create_layer(x, y, "Instances", obj_spaghetti);
		show_debug_message("cooking finished");
        if (instance_exists(progress_bar)) {
            instance_destroy(progress_bar);
            progress_bar = noone;
        }

        ingredients.pasta = false;
        ingredients.tomato = false;
        ingredients.meat = false;
    }
}


event_user(0);
