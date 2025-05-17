var p = instance_nearest(x, y, obj_player);

if (obj_player.interact) {
    image_index = 1 - image_index;
	toggled = !toggled;
}

if (!variable_instance_exists(id, "interact_instance")) {
    interact_instance = noone;
}


if (p != noone && distance_to_object(p) < 10) {
    if (!p.interact) {
        if (!instance_exists(interact_instance)) {
            interact_instance = instance_create_depth(x, y - 16, -22, obj_interact);
        }
    } else {
		
        if (instance_exists(interact_instance)) {
            with (interact_instance) instance_destroy();
            interact_instance = noone;
        }


    }
} else {
	
    if (instance_exists(interact_instance)) {
        with (interact_instance) instance_destroy();
        interact_instance = noone;
    }
}