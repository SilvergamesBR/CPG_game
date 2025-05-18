event_inherited();
enemy_targetable = false;

// Define primeiro as funções
function select_pasta() {
    show_debug_message("Pasta selected");
}

function select_tomato() {
    show_debug_message("Tomato selected");
}

function select_meat() {
    show_debug_message("Meat selected");
}

// Mapeia nomes a funções (agora elas já existem)
ingredient_actions = {
    "pasta": select_pasta,
    "tomato": select_tomato,
    "meat": select_meat
};


// Ingredientes necessários
ingredients = {
    pasta: false,
    tomato: false,
    meat: false
};


progress_bar = noone;
cooking_timer = 0;

// Função para iniciar o cozimento
start_spaghetti = function () {
    if (!instance_exists(progress_bar)) {
        var bar = instance_create_layer(x, y - 16, "Instances", obj_progress_bar);
        bar.stove_ref = id;
        progress_bar = bar;
    }
    cooking_timer = 180;
};
