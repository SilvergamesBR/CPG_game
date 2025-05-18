// Inherit the parent event
event_inherited();
image_blend = c_orange;

targetType = obj_player;

move_speed = 2;

if (instance_exists(targetType)) {
    targetInst = instance_nearest(x, y, targetType);
} else {
    instance_deactivate_object(self);
}

object_damage = 10;
