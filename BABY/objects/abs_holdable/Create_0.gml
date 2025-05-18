
isHeld       = false;    // whether the player is currently holding this
hold_offsetX = 0;        // horizontal offset from the player’s origin
hold_offsetY = 0;        // vertical offset from the player’s origin
holder       = noone;    // the instance ID of who’s holding it
throw_key   = ord("C");    // e.g. 'C' to throw
throw_speed = 8; 
thrown = false;
reflected = false;
dir =0;

// Throw charge parameters
charge        = 0;       // current charge (0…1)
charge_speed  = 0.5;     // how fast charge ramps per second
min_throw_spd = 4;       // minimum throw speed
max_throw_spd = 16;      // maximum throw speed

// Tracking mouse state
was_holding = false;     // did we have the button down last step?

// Progress bar settings (GUI space)
bar_w = 200;
bar_h = 16;
bar_x = display_get_gui_width()/2 - bar_w/2;
bar_y = display_get_gui_height() - bar_h - 16;