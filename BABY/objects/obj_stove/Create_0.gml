// Inherit the parent event
event_inherited();

progress_bar = noone;
cooking_timer = 0;

start_spaghetti = function () {
    if (!instance_exists(progress_bar)) {
        var bar = instance_create_layer(x, y - 16, "Instances", obj_progress_bar);
        bar.stove_ref = id; // pass a reference to this stove
        progress_bar = bar;
    }

    cooking_timer = 180;
};
