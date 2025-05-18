// Variáveis de controle (defina no Create Event)
if (!variable_instance_exists(id, "state")) state = "idle";
if (!variable_instance_exists(id, "attack_cooldown")) attack_cooldown =5;
if (!variable_instance_exists(id, "targetInst")) targetInst = noone;
if (!variable_instance_exists(id, "obstacle_ref")) obstacle_ref = noone;
if (!variable_instance_exists(id, "spawn_point")) spawn_point = [x, y];

// Velocidade de movimento
var move_speed = global.illuminated ? 4 : 2;

switch(state) {
    
    case "idle":
	
        attack_cooldown -= 1;
        if (attack_cooldown <= 0) {
			show_debug_message("if 1")
            if (instance_exists(obstacle_ref) && obstacle_ref.hp > 0) {
				show_debug_message("if 2")
                state = "attacking";
                attack_cooldown = 10;
            }
        }
        break;

    case "attacking":
		show_debug_message("entrou em attacking")
        attack_cooldown -= 1;
        if (attack_cooldown <= 0) {
            if (instance_exists(obstacle_ref)) {
                obstacle_ref.hp -= 10;  // dano no obstáculo
                attack_cooldown = 24;
                
                if (obstacle_ref.hp <= 0) {
                    // Passagem liberada
                    collision_mask = -1; // desativa colisão com obstáculo (ajuste conforme sua máscara)
                    state = "inside";
                    targetInst = noone;
                }
            } else {
                // Obstáculo desapareceu, destrói inimigo?
                instance_destroy();
                exit;
            }
        }
        break;

    case "inside":
        // Define o tipo do alvo que quer atacar/interagir
		targetType = obj_player;
        if (!instance_exists(targetInst)) {
            if (instance_exists(targetType)) {
                targetInst = instance_nearest(x, y, targetType);
            } else {
                instance_destroy();
                exit;
            }
        }

        if (instance_exists(targetInst)) {
            move_towards_point(targetInst.x, targetInst.y, move_speed);
            if (point_distance(x, y, targetInst.x, targetInst.y) < 10) {
                // Interage com o alvo (aqui um evento user 2, por exemplo)
                with(targetInst) event_user(2);
                // Agora volta para o spawn
                targetInst = noone;
                state = "returning";
            }
        }
        break;

    case "returning":
        move_towards_point(spawn_point[0], spawn_point[1], move_speed);
        if (point_distance(x, y, spawn_point[0], spawn_point[1]) < 10) {
    if (instance_exists(spawn_controller)) {
        spawn_controller.spawn_occupied[spawn_index] = false;
    }
    
    // Destrói o inimigo
    instance_destroy();
}
}