///Initializes the turn order boxes

var padding = 2;

var rndStrHeight = string_height(roundCntrStr);
var spaceLeft = curActorBox.y - rndStrHeight;
var portBoxHeight = floor(spaceLeft/5) + (padding);
var portBoxWidth = 64 + (padding*2);
turnOrderBoxes = ds_list_create();

var i = 1;
for(var j=4; j > -1; j--) {
    tempBox = instance_create(0, (rndStrHeight+(j*-2))+(j*portBoxHeight), oTurnOrderBox);
    tempBox.actor = ds_list_find_value(turnOrder, i);
    tempBox.place = i;
    tempBox.height = portBoxHeight;
    tempBox.width = portBoxWidth;
    tempBox.padding = padding;
    if(i == 1) {
        tempBox.next = true;
    }
    i++;
    
    ds_list_add(turnOrderBoxes, tempBox);
}

return turnOrderBoxes;








