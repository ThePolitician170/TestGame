//arg0 -- Actor we're doing range calc for

actor = argument0;

range = actor.move;

actions = actor.actions;

with(oActor) {
    if(army != other.actor.army && state != "dead") {
        tempX = abs(gridX - other.actor.gridX);
        tempY = abs(gridY - other.actor.gridY);
        
        if(tempX <= 1 && tempY <= 1) {
            global.map[gridX, gridY].attackNode = true;
            global.map[gridX, gridY].color = c_red;
            
        }
    
    }
    
}

































