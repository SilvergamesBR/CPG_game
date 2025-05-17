if (aberta) {
    sprite_index = spr_door_opened;
    mask_index = spr_door_opened; 
} else {
    sprite_index = spr_door_closed;
    mask_index = spr_door_closed;
}

var p = instance_nearest(x, y, obj_player);

if (p != noone && distance_to_object(p) < 20) {
    if (!p.interact) {
        if (!instance_exists(interact_instance)) {
            interact_instance = instance_create_depth(x, y - 16, -5, obj_interact);
        }
    } else {
		
        if (instance_exists(interact_instance)) {
            with (interact_instance) instance_destroy();
            interact_instance = noone;
        }

    if (aberta) {
    if (!place_meeting(x, y, obj_player)) {
        aberta = false;
    }
} else {
    aberta = true;
}
    }
} else {
	
    if (instance_exists(interact_instance)) {
        with (interact_instance) instance_destroy();
        interact_instance = noone;
    }
}