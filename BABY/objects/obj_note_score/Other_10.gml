if (scoreValue >= 90){
	sprite_index = spr_perfect;
	global.perfects += 1;
}else if (scoreValue >= 75){
	sprite_index = spr_great;
	global.greats += 1;
}else if (scoreValue >= 50){
	sprite_index = spr_good;
	global.goods += 1;
}else if (scoreValue >= 25){
	sprite_index = spr_bad;
	global.bads += 1
}else{
	sprite_index = spr_miss;
	global.veryBads += 1;
}