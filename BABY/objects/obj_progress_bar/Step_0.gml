if (instance_exists(stove_ref)) {
    if (stove_ref.cooking_timer <= 0) {
        instance_destroy(); // self-destruct when done
    }
}