// First define the function (function reference)
function select_pasta() {
    show_debug_message("Pasta selected");
    // other logic
}

// Now you can use it as a key
ingredients = {};
ingredients[select_pasta] = false;

// Initialize other stuff AFTER the function and ingredients
progress_bar = noone;
cooking_timer = 0;

start_spaghetti = function () {
    if (!instance_exists(progress_bar)) {
        var bar = instance_create_layer(x, y - 16, "Instances", obj_progress_bar);
        bar.stove_ref = id;
        progress_bar = bar;
    }
    cooking_timer = 180;
};
