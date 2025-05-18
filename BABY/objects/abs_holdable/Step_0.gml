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
    
    // 2) Drop logic: for example, press X to drop
    if (keyboard_check_pressed(ord("X"))) {
        isHeld = false;
        holder = noone;
    }
    
} else {
    // 3) Check for pickup: e.g. player presses Z when touching
    var ply = instance_nearest(x, y, obj_player);
    if (ply != noone && point_distance(x, y, ply.x, ply.y) < 32) {
        if (keyboard_check_pressed(ord("Z"))) {
            // pick up
            isHeld       = true;
            holder       = ply;
            
            // calculate offsets so it appears “in hand”
            hold_offsetX = x - ply.x;
            hold_offsetY = y - ply.y;
        }
    }
}