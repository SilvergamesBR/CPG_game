// In obj_pasta – Collision Event with obj_stove

var stove_ref = other; // 'other' is the instance you're colliding with (the stove)
stove_ref.ingredients[select_pasta] = true;

instance_destroy(); // destroy the pasta item
stove_ref.event_user(0); // optionally trigger a cooking check or update