// Se estiver aberta, não bloqueia colisão
aberta = true
if (aberta) {
    sprite_index = spr_door_opened;
    mask_index = spr_door_opened; 
} else {
    sprite_index = spr_door_closed;
    mask_index = spr_door_closed;
}


if  (distance_to_object(obj_player) < 10){
	while(obj_player.interact == false){
	instance_create_layer(x, y, "Instances", obj_interact);
	}
}