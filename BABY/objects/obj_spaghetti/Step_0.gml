event_user(0);


if(toggled == true){
	instance_create_layer(x,y,"Instances",obj_dirty_plate)
	instance_deactivate_object(self);
	global.hunger -= 30;
	global.tidiness -= 5;
}