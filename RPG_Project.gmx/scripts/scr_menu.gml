///scr_menu 
if(room == rm_start_menu){
switch(mpos){
    case 0:
    {
        instance_create(0,0,obj_room_transition);
        break;
    }
    case 1:
    {
        break;
    }
    case 2:
    {
        break;
    }
    case 3:
    {
        break;
    }
    case 4:
    {
        game_end();
        break;
    }
    default:
    {
        break;
    }
}
}else{
    switch(mpos){
    case 0:
    {
        global.pause = 0;
        if(instance_exists(obj_player_stats)){
            obj_player_stats.visible = 1;
        }
        break;
    }
    case 1:
    {
        break;
    }
    case 2:
    {
        break;
    }
    case 3:
    {
        break;
    }
    case 4:
    {
        room_goto(rm_start_menu);
        break;
    }
    case 5:
    {
        game_end();
        break;
    }
    default:
    {
        break;
    }
}
}
