// Average number of notes to try spawning per second (e.g. 0.2 → 1 every 5s on average)
multiplier = global.sanity+global.tidiness * global.hunger;

multiplier = 1 + (multiplier/100);

spawn_per_sec = 0.1 * multiplier;

minigame_music_id = audio_play_sound(st_1_loop, 1, true);

// Compute per‑step probability
// room_speed is your game's FPS (default 30 or 60)
spawn_chance_step = spawn_per_sec / game_get_speed(gamespeed_fps);

// Name of the layer to create notes on
spawn_layer  = "Instances";    

// Object to spawn
spawn_obj = obj_note;

enableQuit = false
gameOver = false

global.spawn_increase_rate = 0; 

randomize();

score = 0;
global.mistakes = 0;

global.perfects = 0;
global.greats = 0;
global.goods = 0;
global.bads = 0;
global.veryBads = 0;