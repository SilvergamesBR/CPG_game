if (instance_exists(stove_ref)) {
    if (stove_ref.cooking_timer <= 0) {
        instance_destroy(); // destrói a barra quando o cozimento acabar
    }
} else {
    instance_destroy(); // destrói a barra se o fogão foi destruído
}