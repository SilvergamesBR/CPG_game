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
	
    // 2) Drop logic: for example, press X to drop
    if (keyboard_check_pressed(ord("X"))) {
        isHeld = false;
        holder = noone;
    }
	
	if(mouse_check_button(mb_left)){
		throw_speed += 0.1;	
	}
	
	if (mouse_check_button_pressed(mb_left)) {
        // 1) Un‑flag it as held
        isHeld = false;
        // 2) Compute direction: toward mouse, or fixed
        //    Example: throw toward the mouse cursor
        dir = point_direction(x, y, mouse_x, mouse_y);
        // 3) Assign motion
        speed     = throw_speed;
        direction = dir;
        // 4) Clear holder so it won’t re‑attach
        holder    = noone;
		thrown = true;
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
        if (mouse_check_button_pressed(mb_right)) {
            // pick up
            isHeld       = true;
            holder       = ply;
            
            // calculate offsets so it appears “in hand”
            hold_offsetX = x - ply.x;
            hold_offsetY = y - ply.y;
        }
    }
	solid = true;
}