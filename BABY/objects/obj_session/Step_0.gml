randomize();

if(random(1) < 0.001 and room == rm_bedroom){
	var sx = irandom_range(250, room_width-250);
    var sy = irandom_range(250, room_height-250);

    instance_create_layer(sx, sy, "Instances", obj_dirt);
}

global.hunger += 0.01;

global.hygiene -= 0.001;