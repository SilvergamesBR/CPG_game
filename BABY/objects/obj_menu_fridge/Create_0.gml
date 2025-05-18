// Inherit the parent event
event_inherited();

options = [
    function() { global.item_held = "Tomato"; instance_destroy(); global.menu_active = false; },
    function() { global.item_held = "Lettuce"; instance_destroy(); global.menu_active = false; }
];
