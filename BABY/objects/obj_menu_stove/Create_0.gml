// Inherit the parent event
event_inherited();

// Define the functions (you only do this once)
function select_spaghetti() {
    show_debug_message("You selected Sphaghetti!");
}

// Now store the function references in the options array
options = [select_spaghetti];
option_labels = ["spaghetti"];

// For tracking the selection
current_index = 0;
