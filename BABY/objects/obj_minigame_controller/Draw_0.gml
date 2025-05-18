if(gameOver == false){
	draw_text(0, 0, "Score: " + string(score));
	draw_text(0, 24, "Mistakes: " + string(global.mistakes));
}

if (gameOver == true ){
	var spacing = 24
	
	var textHeight = room_height/3;
	
	var finalScore = "Final score: "+string(score);
	var perfects = "Perfects: "+string(global.perfects);
	var greats = "Greats: "+string(global.greats);
	var goods = "Goods: "+string(global.goods);
	var bads = "Bads: "+string(global.bads);
	var veryBads = "Very bads: "+string(global.veryBads);
	
	draw_set_color(c_red);
	draw_text(room_width/2- (string_width("The end")/2), textHeight, "The end");
	draw_set_color(c_white);
	draw_text(room_width/2- (string_width(finalScore)/2), textHeight + (spacing *1),finalScore);
	draw_text(room_width/2- (string_width(perfects)/2), textHeight + (spacing *2), perfects);
	draw_text(room_width/2- (string_width(greats)/2), textHeight + (spacing *3), greats);
	draw_text(room_width/2- (string_width(goods)/2), textHeight + (spacing *4), goods);
	draw_text(room_width/2- (string_width(bads)/2), textHeight + (spacing *5), bads);
	draw_text(room_width/2- (string_width(veryBads)/2), textHeight + (spacing *6), veryBads);
	draw_text(room_width/2- (string_width("press esc to return to game")/2), textHeight + (spacing *7), "press esc to return to game");
	
}