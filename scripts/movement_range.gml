//arg 0 - Actor

actor = argument0;

//reset all node data
wipe_nodes();

var open, closed;
var start, current, neighbor;
var tempG, range, costMod;

//declare relevent variables from arguments
start = global.map[actor.gridX, actor.gridY];
range = actor.move * actor.actions;

//create data structures
open = ds_priority_create();
closed = ds_list_create();

//add starting node to open list
ds_priority_add(open, start, start.G);

//while open queue is NOT empty...
//repeat until ALL nodes processed
while(ds_priority_size(open) > 0) {
    //remove node with lowest G score from open
    current = ds_priority_delete_min(open);
    
    //add current node to closed list
    ds_list_add(closed, current);
    
    //step through all of current's neighbors
    for(ii = 0; ii < ds_list_size(current.neighbors); ii += 1) {
        //store current neighbor in neighbor variable
        neighbor = ds_list_find_value(current.neighbors, ii);
        
        //add neighbor to open list if passable, no occupant, in range, and not in closed list
        if(ds_list_find_index(closed, neighbor) < 0 && neighbor.passable && 
        neighbor.occupant == noone && neighbor.cost + current.G <= range) {
            //only calculate a new G score for neighbor if not calculated
            if(ds_priority_find_priority(open, neighbor) == 0 || ds_priority_find_priority(open, neighbor) == undefined) {
                costMod = 1;
                
                //give neighbor appropriate parent
                neighbor.parent = current;
                
                //if node is diagonal, create appropriate costMod
                if(neighbor.gridX != current.gridX && neighbor.gridY != current.gridY) {
                    costMod = 2;
                }
                
                //calculate G score of neighbor with costMod
                neighbor.G = current.G + (neighbor.cost * costMod);
                
                //add neighbor to open list so it can be checked
                ds_priority_add(open, neighbor, neighbor.G);
            
            //if neighbor score has ALREADY been calculated
            } else {
                //calculate if the neighbor's score would be LOWER if found from the current node
                costMod = 1;
                
                //if node is diagonal, create appropriate costMod
                if(neighbor.gridX != current.gridX && neighbor.gridY != current.gridY) {
                    costMod = 2;
                }
                tempG = current.G + (neighbor.cost * costMod);
                
                //check if G score would be lower
                if(tempG < neighbor.G) {
                    neighbor.parent = current;
                    neighbor.G = tempG;
                    ds_priority_change_priority(open, neighbor, neighbor.G);
                }
                
            }
            
        }
        
    }   
    
}

//round down all G scores for movement
with(oNode) {
    G = floor(G);
    
}

//Destroy open to prevent MEMORY LEAKS
ds_priority_destroy(open);

//color move nodes then destroy closed list
for(ii = 0; ii < ds_list_size(closed); ii += 1) {
    current = ds_list_find_value(closed, ii);
    current.moveNode = true;
    
    color_move_node(current, actor.move, actor.actions);
}

//Destroy closed list to prevent MEMORY LEAKS
ds_list_destroy(closed);   
    
start.moveNode = false;


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
