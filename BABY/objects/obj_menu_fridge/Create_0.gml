// Inherit the parent event
event_inherited();

// Define the functions (you only do this once)
function select_tomato() {
	if(global.money > 10){
		instance_create_layer(x,y,"Instances",obj_tomato)
		global.money -= 10;
	}
    show_debug_message("You selected Tomato!");
}
// Define the functions (you only do this once)
function select_pasta() {
	if(global.money > 10){
		instance_create_layer(x,y,"Instances",obj_pasta)
		global.money -= 10;
	}
    show_debug_message("You selected Pasta!");
}


function select_meat() {
	if(global.money > 10){
		instance_create_layer(x,y,"Instances",obj_meat)
		global.money -= 10;
	}
    show_debug_message("You selected Meat!");
}

// Now store the function references in the options array
options = [select_tomato, select_pasta, select_meat];
option_labels = ["Tomato", "Pasta", "Meat"];

// For tracking the selection
current_index = 0;
