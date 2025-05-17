var scoreIncrease = ((timing/duration)*100)
score += scoreIncrease;

audio_play_sound(
    choose(
        correct_note1,
        correct_note2,
        correct_note3,
        correct_note4,
        correct_note5,
        correct_note6
    ),
    1,    
    false 
);

if (scoreIncrease >= 90){
	global.spawn_increase_rate -= 0.015;
}

if (scoreIncrease < 25){
	global.spawn_increase_rate += 0.01;
}

var popup = instance_create_layer(x, y, "Instances", obj_note_score);
popup.scoreValue = scoreIncrease;
with (popup) event_user(0);

instance_deactivate_object(self);