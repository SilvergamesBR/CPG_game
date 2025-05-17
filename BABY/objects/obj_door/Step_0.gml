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
    // Simula a área que a porta ocuparia ao fechar
    var spr = spr_door_closed;
    var left   = x + sprite_get_bbox_left(spr);
    var top    = y + sprite_get_bbox_top(spr);
    var right  = x + sprite_get_bbox_right(spr);
    var bottom = y + sprite_get_bbox_bottom(spr);

    // Verifica se o player estaria colidindo com a porta fechada
    if (!collision_rectangle(left, top, right, bottom, obj_player, false, true)) {
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