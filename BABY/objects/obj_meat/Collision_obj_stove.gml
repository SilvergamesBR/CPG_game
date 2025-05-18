// obj_meat – Collision Event with obj_stove
var stove_ref = other;
stove_ref.ingredients[select_meat] = true;
instance_destroy();
stove_ref.event_user(0);