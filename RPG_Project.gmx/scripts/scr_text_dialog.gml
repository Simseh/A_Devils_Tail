/// scr_text_dialog("Text",speed,x,y);

txt = instance_create(argument2,argument3,obj_text);
with(txt){
    padding = 16;
    maxlength = view_wview[0]-20;
    text = argument0;
    
    // TODO: Make something to increase speed when pressing a button.
    text_spd = argument1;
    font = fnt_dialog;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    text_width = string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2),maxlength);
    
    // TODO: I need to change the box_width value to something more flexible.
    // -10 is for creating 5 pixels of space on either side.
    box_width = view_wview[0]-10;
    box_height = text_height + (padding*2);
}
