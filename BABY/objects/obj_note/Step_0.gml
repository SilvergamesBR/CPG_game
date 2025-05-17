if (growing) {
   timing += 1;
   if (timing >= duration) {
		timing = duration;
		growing = false;
   }
} else {
    timing -= 1;
    if (timing <= 0) {
		var popup = instance_create_layer(x, y, "Instances", obj_note_score);
		popup.scoreValue = 0;
		with (popup) event_user(0);
		global.mistakes += 1;
		global.spawn_increase_rate += 0.01;
		audio_play_sound(wrong_note,1,false);
        instance_deactivate_object(self);
    }
}

// 2. Compute interpolation factor (0→1)
var t = timing / duration;

// 3. Linearly interpolate between min_scale and max_scale
var scale_val = lerp(min_scale, max_scale, t);

// 4. Apply to the sprite
image_xscale = scale_val;
image_yscale = scale_val;

var col = merge_color(c_red, c_green, t);
image_blend = col;


