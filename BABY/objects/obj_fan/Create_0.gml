// Posição de spawn: setada na criação ou pelo controlador
spawn_point = [x, y]; // guardar a posição inicial
state = "idle";       // estados: idle, attacking, inside, returning
attack_cooldown = 0;
target = noone;
obstacle_ref = noone; 