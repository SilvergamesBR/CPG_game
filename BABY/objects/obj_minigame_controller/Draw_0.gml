draw_text(0, 0, "Score: " + string(score));
draw_text(0, 24, "Mistakes: " + string(global.mistakes));

if (gameOver == true ){
	var spacing = 24

	draw_text(room_width/2, room_height/2, "YOU LOST !");
	draw_text(room_width/2, room_height/2 + (spacing *1), "Final score: "+string(score));
	draw_text(room_width/2, room_height/2 + (spacing *2), "Perfects: "+string(global.perfects));
	draw_text(room_width/2, room_height/2 + (spacing *3), "Greats: "+string(global.greats));
	draw_text(room_width/2, room_height/2 + (spacing *4), "Goods: "+string(global.goods));
	draw_text(room_width/2, room_height/2 + (spacing *5), "Bads: "+string(global.bads));
	draw_text(room_width/2, room_height/2 + (spacing *6), "Very bads: "+string(global.veryBads));
	draw_text(room_width/2, room_height/2 + (spacing *7), "press esc to return to menu");
	
}