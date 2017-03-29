///Initializes the Action Menu

actor = argument0;
var actions = actor.actions;

var actorBoxWidth = curActorBox.drawWidth;
var drawWidth = display_get_gui_width() - (actorBoxWidth*2);
var drawHeight = display_get_gui_height() - 64;

var actionCount = array_length_1d(actions);
var itemWidth = drawWidth/actionCount;

actionMenu = instance_create(actorBoxWidth, drawHeight, oActionMenu);
actionMenu.menu = actions;
actionMenu.space = itemWidth;

for(var i=0; i < actionCount; i++) {
    menuItem = instance_create(actionMenu.x  + (i*itemWidth), actionMenu.y, oActionMenuItem);
    menuItem.text = actions[i];
    menuItem.width = itemWidth;
    menuItem.height = 64;
}

return actionMenu;
