// Accumulate time in seconds

time_accumulator += delta_time / 1000000;

if (time_accumulator >= real_seconds_per_ingame_minute) {
    time_accumulator -= real_seconds_per_ingame_minute;
    minute += 15;

    if (minute >= 60) {
        minute = 0;
        hour += 1;
    }
}

if (hour >= 22) {
	global.money += global.popularity*0.035;
	global.current_game_day += 1
	hour = 9;
	minute = 0;
}

