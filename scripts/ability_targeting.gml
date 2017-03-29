//arg0 -- Actor performing action

actor = argument0;

targetingType = actor.targetingType;

range = actor.abilityRange;


switch(targetingType) {
    case "cone":
        originX = actor.x + HALF_NODE_SIZE;
        originY = actor.y + HALF_NODE_SIZE;
             
        dir = point_direction(originX, originY, oCursor.hoverNode.x + HALF_NODE_SIZE, oCursor.hoverNode.y + HALF_NODE_SIZE);
        originX += lengthdir_x(NODE_SIZE*.97, dir);
        originY += lengthdir_y(NODE_SIZE*.97, dir);
        dist = range - HALF_NODE_SIZE;
        
        for(ii = -30; ii <= 30; ii += 30) {
            for(jj = 0; jj <= dist; jj += (HALF_NODE_SIZE/2)) {
                tempX = originX + lengthdir_x(jj, dir + ii);
                tempY = originY + lengthdir_y(jj, dir + ii);
                
                if(!collision_line(originX, originY, tempX, tempY, oWall, false, false)) {
                    if(instance_position(tempX, tempY, oNode)) {
                        node = instance_position(tempX, tempY, oNode);
                        
                        if(node.type != "wall") {
                            node.actionNode = true;
                            node.color = c_purple;
                        }
                        
                    }
                
                }
                
            }
            
        }
        
        break;
        
    case "singleTarAny":
        with(oActor) {
            if(state != "dead") {
                if(!collision_line(x, y, other.actor.x, other.actor.y, oWall, false, false) && state != "dead") {
                    node = global.map[gridX, gridY];
                    
                    node.actionNode = true;
                    node.color = c_green;
                }
            }
        }
        break;
    
    case "visible allies":
        with(oActor) {
            if(army == other.actor.army && state != "dead") {
                if(!collision_line(x, y, other.actor.x, other.actor.y, oWall, false, false)) {
                    node = global.map[gridX, gridY];
                    
                    node.actionNode = true;
                    node.color = c_green;
                }
            }
        }
        break;
        
    case "visible enemies":
        with(oActor) {
            if(army != other.actor.army && state != "dead") {
                if(!collision_line(x, y, other.actor.x, other.actor.y, oWall, false, false)) {
                    node = global.map[gridX, gridY];
                    
                    node.actionNode = true;
                    node.color = c_purple;
                }
            }
        }
        break;
        
    case "dead allies":
        with(oActor) {
            if(army == other.actor.army && state == "dead") {
                if(!collision_line(x, y, other.actor.x, other.actor.y, oWall, false, false)) {
                    node = global.map[gridX, gridY];
                    
                    node.actionNode = true;
                    node.color = c_green;
                }
            }
        }
    break;

}





























