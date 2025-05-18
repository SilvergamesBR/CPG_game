//show_debug_message(hp)
// Quando a vida zerar, libera apenas para os fans
if (hp <= 0 && !targetable) {
    targetable = true;              // fãs vão reconhecer que podem entrar
    // opcional: trocar sprite para porta quebrada
    // sprite_index = spr_door_broken;
}
