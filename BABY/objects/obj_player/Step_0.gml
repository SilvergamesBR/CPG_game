var move_speed = 4;


var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

interact = keyboard_check_pressed(ord("E"));

if (!global.menu_active && interact && global.interact_cooldown == 0) {
    var offset_x = move_x * 16;
    var offset_y = move_y * 16;

    var interact_obj = instance_place(x + offset_x, y + offset_y, abs_interactable);
    if (interact_obj != noone) {
        if (interact_obj.object_index == obj_fridge) {
            global.menu_active = true;
            instance_create_layer(x, y, "Instances", obj_menu_fridge);
        } else if (interact_obj.object_index == obj_stove) {
            global.menu_active = true;
            instance_create_layer(x, y, "Instances", obj_menu_stove);
        }
    }
}



if(attacked){
	image_blend = c_orange;	
}



if (!global.menu_active){
if (move_x != 0 && move_y != 0) {
    move_x *= 0.7071;
    move_y *= 0.7071;
}


// No player, passo horizontal
if (place_meeting(x + move_x * move_speed, y, obj_solid)) {
    // verifica se o objeto colidido é uma porta aberta
    var inst = instance_place(x + move_x * move_speed, y, obj_solid);
    if (inst != noone && inst.aberta == true) {
        // porta aberta, ignora colisão
        x += move_x * move_speed;
    } else {
        while (!place_meeting(x + sign(move_x), y, obj_solid)) {
            x += sign(move_x);
        }
        move_x = 0;
    }
} else {
    x += move_x * move_speed;
}

// Passo vertical - mesma lógica
if (place_meeting(x, y + move_y * move_speed, obj_solid)) {
    var inst = instance_place(x, y + move_y * move_speed, obj_solid);
    if (inst != noone && inst.aberta == true) {
        y += move_y * move_speed;
    } else {
        while (!place_meeting(x, y + sign(move_y), obj_solid)) {
            y += sign(move_y);
        }
        move_y = 0;
    }
} else {
    y += move_y * move_speed;
}

}