if (!instance_exists(targetInst)) {
    if (instance_exists(targetType)) {
        targetInst = instance_nearest(x, y, targetType);
    } else {
        instance_destroy();
        exit;
    }
}

if (instance_exists(targetInst)) {
    move_towards_point(targetInst.x, targetInst.y, move_speed);
    
    if (point_distance(x, y, targetInst.x, targetInst.y) < 10) {
        // Reached target — do whatever you need here:
        // e.g. instance_destroy(targetInst); // “collect” it
        // or trigger an event in this seeker, etc.
		with(targetInst) event_user(2);
        // Then destroy the seeker itself:
        instance_destroy();
    }
}