/// Create Event de obj_fan_spawner

// 1) Guarde o próprio id do controlador  
var ctrl = id;

enemy_types      = [obj_fanatic, obj_saboteur_fan, obj_stealth_fan, obj_thief_fan];

// 2) Cria o array de spawn points no controlador
spawn_points = [];

// 3) Para cada porta, empurra o id da porta no array do controlador
with (obj_door) {
    array_push(ctrl.spawn_points, id);
}

// 4) Mesmo para cada janela
with (obj_window) {
    array_push(ctrl.spawn_points, id);
}

// 5) Agora você pode criar seu array de ocupação, baseado no tamanho real
spawn_occupied = [];
for (var i = 0; i < array_length(spawn_points); i++) {
    spawn_occupied[i] = false;
}

// 6) E finalmente inicialize o timer
spawn_cooldown = room_speed * 5;
