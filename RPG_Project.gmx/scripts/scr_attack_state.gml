/// scr_attack_state
image_speed = .3;
switch(sprite_index){
    case spr_player_right:
        sprite_index = spr_player_attack_right;
            break;
    case spr_player_idle_right:
        sprite_index = spr_player_attack_right;
            break;
    case spr_player_down:
        sprite_index = spr_player_attack_down;
            break;
    case spr_player_idle_down:
        sprite_index = spr_player_attack_down;
            break;
    case spr_player_left:
        sprite_index = spr_player_attack_left;
            break;
    case spr_player_idle_left:
        sprite_index = spr_player_attack_left;
            break;
    case spr_player_up:
        sprite_index = spr_player_attack_up;
            break;
    case spr_player_idle_up:
        sprite_index = spr_player_attack_up;
            break;
};
