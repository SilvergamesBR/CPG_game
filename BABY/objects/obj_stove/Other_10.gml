// Inherit the parent event
event_inherited();

if (obj_player.interact) {
    image_index = 1 - image_index;
	toggled = !toggled;
	return true
	}
