randomize();

targetType = choose(obj_clothes,obj_stove);

if (instance_exists(targetType)) {
    targetInst = instance_nearest(x, y, targetType);
	if(targetInst.sabotaged == true){
		instance_deactivate_object(self);
	}
} else {
    instance_deactivate_object(self);
}

move_speed = 4;