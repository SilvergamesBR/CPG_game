// 1) Decrementa o cooldown
spawn_cooldown -= 1;

if (spawn_cooldown <= 0) {
    // 2) Reseta o timer
    spawn_cooldown = room_speed * 5;
    
    // 3) Para cada ponto de spawn
    var ctrl = id;  // garante que "ctrl" é sempre o spawner
    var n = array_length(ctrl.spawn_points);
    
    for (var i = 0; i < n; i++) {
        // só tenta spawnar onde está livre
        if (!ctrl.spawn_occupied[i]) {
			show_debug_message("1")
            var sp_id = ctrl.spawn_points[i];
            // verifica se o objeto spawn_point ainda existe
            if (instance_exists(sp_id)) {
							show_debug_message("2")
                // 4) Sorteia o tipo de inimigo
                var types = ctrl.enemy_types;
                var choice = irandom(array_length(types) - 1);
                var enemy_type = types[choice];
                
                // 5) Cria o inimigo
                var e = instance_create_layer(sp_id.x, sp_id.y, "Instances", enemy_type);
                
                // 6) Linka o spawn ao inimigo
                e.spawn_index      = i;
                e.spawn_controller = ctrl;
                
                // 7) Marca como ocupado
                ctrl.spawn_occupied[i] = true;
				
				//8) passa como obstacle_ref
				e.obstacle_ref = sp_id;
            }
        }
    }
}
