randomize();

if(random(1) < 0.001 and room == rm_bedroom){
	var sx = irandom_range(250, room_width-250);
    var sy = irandom_range(250, room_height-250);

    instance_create_layer(sx, sy, "Instances", obj_dirt);
}

global.hunger += 0.01;

global.hygiene -= 0.001;

if (global.hunger <0 ){
	global.hunger = 0;	
}else if(global.hunger> 100){
	global.hunger = 100;
}

if (global.tidiness <0 ){
	global.tidiness = 0;	
}else if(global.tidiness> 100){
	global.tidiness = 100;
}

if (global.hygiene <0 ){
	global.hygiene = 0;	
}else if(global.hygiene> 100){
	global.hygiene = 100;
}

if (global.sanity <0 ){
	global.sanity = 0;	
}else if(global.sanity> 100){
	global.sanity = 100;
}