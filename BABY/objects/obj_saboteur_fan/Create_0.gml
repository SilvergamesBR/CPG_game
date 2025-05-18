randomize();

var candidates = [];

with (abs_interactable) {
    if (enemy_targetable) {
        array_push(candidates, id);
    }
}

if (array_length(candidates) > 0) {
    var chosen = candidates[irandom(array_length(candidates) - 1)];
    targetType = chosen;
} else {
    targetType = noone; // fallback if nothing found
}

if (instance_exists(targetType)) {
    targetInst = instance_nearest(x, y, targetType);
	if(targetInst.sabotaged == true){
		instance_deactivate_object(self);
	}
} else {
    instance_deactivate_object(self);
}

move_speed = 4;