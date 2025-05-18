if (cooking_timer <= 0) {
    var all_ready = true;
    var keys = variable_struct_get_names(ingredients);

    for (var i = 0; i < array_length(keys); i++) {
        var key = keys[i];
        if (!ingredients[key]) {
            all_ready = false;
            break;
        }
    }

    if (all_ready) {
        start_spaghetti();
    }
}

if (cooking_timer > 0) {
    cooking_timer -= 0.1;

    if (cooking_timer <= 0) {
        if (instance_exists(progress_bar)) {
            instance_destroy(progress_bar);
            progress_bar = noone;
        }

        ingredients.pasta = false;
        ingredients.tomato = false;
        ingredients.meat = false;
    }
}