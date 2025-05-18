randomize();

if(random(1) < 0.05 and room == rm_bedroom){
	var sx = irandom_range(64, room_width-64);
    var sy = irandom_range(64, room_height-64);

    instance_create_layer(sx, sy, "Instances", obj_dirt);
}