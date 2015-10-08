if mouse_check_button_pressed(mb_left){
    image_index = 0;
    state = scr_attack_state;
}
if keyboard_check(ord("W")){
        y-=player_speed
        phy_position_y -= 3;
        sprite_index = spr_player_up;
        image_speed = .4;
};
if keyboard_check(ord("S")){
        y+=player_speed
        phy_position_y += 3;
        sprite_index = spr_player_down;
        image_speed = .4;
};
if keyboard_check(ord("A")){
        phy_position_x -= 3;
        sprite_index = spr_player_left;
        image_speed = .3;
};
if keyboard_check(ord("D")){
        phy_position_x += 3;
        x+=player_speed
        sprite_index = spr_player_right;
        image_speed = .3;
};
if (sprite_index == spr_player_right  && !keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")) && state == scr_move_state){
    sprite_index = spr_player_idle_right;
    image_speed = .1;
}else if (sprite_index == spr_player_left  && !keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")) && state == scr_move_state){
    sprite_index = spr_player_idle_left;
    image_speed = .1;
}else if (sprite_index == spr_player_up && !keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")) && state == scr_move_state){
    sprite_index = spr_player_idle_up;
    image_speed = .1;
}else if (sprite_index == spr_player_down && !keyboard_check(ord("W")) && !keyboard_check(ord("S")) && !keyboard_check(ord("A")) && !keyboard_check(ord("D")) && state == scr_move_state){
    sprite_index = spr_player_idle_down;
    image_speed = .1;
};
