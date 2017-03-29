//arg0 -- Actor performing range check

actor = argument0;

with(oActor) {
    tempActor = other.actor
    
    if(army != tempActor.army && state != "dead") {
        //check range
        if(point_distance(x + HALF_NODE_SIZE, y + HALF_NODE_SIZE, tempActor.x + HALF_NODE_SIZE, tempActor.y + HALF_NODE_SIZE) <= tempActor.attackRange) {
            if(!collision_line(x + HALF_NODE_SIZE, y + HALF_NODE_SIZE, tempActor.x + HALF_NODE_SIZE, tempActor.y + HALF_NODE_SIZE, oWall, false, false)) {
                global.map[gridX, gridY].attackNode = true;
                global.map[gridX, gridY].color = c_red;
            
            }
        }
        
    }
    
}
