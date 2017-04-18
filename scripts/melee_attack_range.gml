//arg0 -- Actor we're doing range calc for

actor = argument0;

var node = global.map[actor.gridX, actor.gridY];
var neighborsSize = ds_list_size(node.neighbors);

for(i=0; i < neighborsSize; i++) {
    var tempNode = ds_list_find_value(node.neighbors, i);
    
    if(tempNode.occupant == noone && tempNode.passable) {
        tempNode.color = c_red;
    } else if(tempNode.occupant != noone && tempNode.occupant.army != actor.army) {
        tempNode.attackNode = true;
        tempNode.color = c_red;
    }
}

//range = actor.move;
//actions = actor.actions;

/*
with(oActor) {
    if(army != other.actor.army && state != "dead") {
        tempX = abs(gridX - other.actor.gridX);
        tempY = abs(gridY - other.actor.gridY);
        
        if(tempX <= 1 && tempY <= 1) {
            global.map[gridX, gridY].attackNode = true;
            global.map[gridX, gridY].color = c_red;
            
        }
    
    }  
} */

































