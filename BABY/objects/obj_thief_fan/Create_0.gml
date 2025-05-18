randomize();

targetType = choose(obj_clothes,obj_stove);

image_blend = c_fuchsia;

if (instance_exists(targetType)) {
    targetInst = instance_nearest(x, y, targetType);
	if(targetInst.stolen == true){
		instance_deactivate_object(self);
	}
} else {
    instance_deactivate_object(self);
}

move_speed = 4;