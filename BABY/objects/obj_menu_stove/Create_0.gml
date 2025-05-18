// Inherit the parent event
event_inherited();

options = [
    function() {
        show_debug_message("Tomate selecionado");
        instance_destroy();
        global.menu_active = false;
    },
    function() {
        show_debug_message("Alface selecionado");
        instance_destroy();
        global.menu_active = false;
    }
];
