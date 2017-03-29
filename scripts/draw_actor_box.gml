//Draws actor portrait, name, class, and stats
//arg0 Actor to display
//arg1 isTarget
//arg2 gui Width
//arg3 gui Height

var currentActor = argument0;
var isTarget = argument1;
var width = argument2;
var height = argument3;

var padding = 0;

//Rectangle dimensions
var drawWidth = 342;
var drawHeight = 144;
var rectY = height-drawHeight;

//Current actor stats
var name = currentActor.name;
var class = currentActor.class;
var level = string(currentActor.level);
var XP = 0; //string(currentActor.experience);
var HP = string(currentActor.hitPoints);
var maxHP = string(currentActor.maxHitPoints);
var AP = string(currentActor.abilityPoints);
var maxAP = string(currentActor.maxAbilityPoints);
var fervor = 0; //string(currentActor.fervor);
var maxFervor = 100; //string(currentActor.maxFervor);

var portrait = currentActor.portrait;
var portraitWidth = sprite_get_width(portrait) + padding;

var firstLine = name + " / " + class;
var secondLine = "Lv." + level + " / " + "Exp." + string(XP);
var thirdLine = "HP: " +HP+ "/" +maxHP;
var fourthLine = "AP: " +AP+ "/" +maxAP;
var fifthLine = "Fervor: " +string(fervor)+ "/" +string(maxFervor);

var xPos = padding;
if(!isTarget) {
    xPos = width - portraitWidth;
}

draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(padding, rectY, drawWidth, height, false);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_color(c_white);

var textHeight = string_height(firstLine);

draw_text(padding, rectY, firstLine);
draw_text(padding, rectY+textHeight, secondLine);

draw_sprite(portrait, 0, 0, rectY+(textHeight*2));
draw_text(portraitWidth, rectY+(textHeight*2), thirdLine);
draw_text(portraitWidth, rectY+(textHeight*3), fourthLine);
draw_text(portraitWidth, rectY+(textHeight*4), fifthLine);

reset_draw_defaults();


