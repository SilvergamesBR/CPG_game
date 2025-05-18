if (isHeld) {
    // 1) Follow the holder’s position + offset
    if (instance_exists(holder)) {
        x = holder.x + hold_offsetX;
        y = holder.y + hold_offsetY;
    } else {
        // if the holder was destroyed, drop
        isHeld = false;
        holder = noone;
    }
    
	solid = false;
	
	image_blend = c_white;
	
	
	var gameFps = game_get_speed(gamespeed_fps);
	if (mouse_check_button(mb_left) or keyboard_check(ord("X"))) {
        // ramp up charge
        charge = clamp(charge + charge_speed / gameFps, 0, 1);
        was_holding = true;
    } else if (was_holding) {
        // 3) On release: execute throw
        var currentPower = lerp(min_throw_spd, max_throw_spd, charge);
		dir = point_direction(x, y, mouse_x, mouse_y);
        speed     = currentPower;
        direction = point_direction(x, y, mouse_x, mouse_y);
        isHeld    = false;
        holder    = noone;
        charge    = 0;
        thrown    = true;
        was_holding = false;
    }
} else if (thrown){
	speed -= 0.1;
	direction = dir;
	if(speed <= 0){
		speed = 0;
		thrown = false;
	}
	solid = true;
}else {
    // 3) Check for pickup: e.g. player presses Z when touching
    var ply = instance_nearest(x, y, obj_player);
    if (ply != noone && point_distance(x, y, ply.x, ply.y) < 48) {
		image_blend = c_red;
        if (mouse_check_button_pressed(mb_right) or keyboard_check_pressed(ord("Z"))) {
            // pick up
            isHeld       = true;
            holder       = ply;
            
            // calculate offsets so it appears “in hand”
            hold_offsetX = x - ply.x;
            hold_offsetY = y - ply.y;
			
			
        }
    }else{
		image_blend = c_white;
	}
	solid = true;
}