var x0 = room_width  * 0.5;
var y0 = room_height * 0.4;
var spacing = 32;

var programCredits = "Programacao: Victor Zeferino & Lucas Fajardo";
var artCredits = "Arte: Mariana Rodrigues";


var wpc = string_width(programCredits);
var wac = string_width(artCredits);

draw_set_color(c_white);
//draw_set_font(fnt_menu);

draw_text(x0-(wpc/2), y0, programCredits);
draw_text(x0-(wac/2), y0+spacing, artCredits);

draw_text(0, 0, "pressione esc para voltar ao menu");