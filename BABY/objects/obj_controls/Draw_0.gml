if (room == rm_controls) {
	var x0 = room_width  * 0.5;
	var y0 = room_height * 0.4;
	var spacing = 32;

	var movement = "Movimentação: WASD";
	var getItens = "Pegar itens: Botão direito do mouse, itens pegaveis brilham vermelho quando em range";
	var throwItems = "Jogar itens: Botão esquerdo do mouse, segure para jogar mais lonje";
	var throwItems2 = "e mire com o ponteiro";
	var interact = "Interagir: E";
	


	var wpc = string_width(movement);
	var wac = string_width(getItens);
	var wtc = string_width(throwItems);
	var wtc2 = string_width(throwItems2);
	var wic = string_width(interact);

	draw_set_color(c_black);
//draw_set_font(fnt_menu);

	draw_text(x0-(wpc/2), y0, movement);
	draw_text(x0-(wic/2), y0+(1*spacing), interact);
	draw_text(x0-(wac/2), y0+(2*spacing), getItens);
	draw_text(x0-(wtc/2), y0+(3*spacing), throwItems);
	draw_text(x0-(wtc2/2), y0+(4*spacing), throwItems2);
	

	draw_text(0, 0, "pressione esc para voltar ao menu");
}