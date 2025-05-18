// Inherit the parent event
event_inherited();

// Define the function
function select_spaghetti() {
    var stove_var = instance_nearest(x, y, obj_stove);

    if (stove_var != noone && is_callable(stove_var.start_spaghetti)) {
        stove_var.start_spaghetti();
    }

    show_debug_message("You selected Spaghetti!");
}

// Store the function references
options = [select_spaghetti];
option_labels = ["spaghetti"];
current_index = 0;