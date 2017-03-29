//arg 0 - Text to draw
//arg 1 - Speed to draw text
//arg 2 - x of text - NOT USING
//arg 3 - y of text - NOT USING
//arg 4 - font of text
//arg 5 - Padding

text = instance_create(0, 0, oText);

with(text) {

    text = argument0;
    spd = argument1;
    font = argument2;
    padding = argument3;
    maxLength = display_get_gui_width() - (padding*2);
    
    textLength = string_length(text);
    fontSize = font_get_size(font);
    
    draw_set_font(font);
    
}

reset_draw_defaults();





