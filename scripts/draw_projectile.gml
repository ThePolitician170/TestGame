//Draw a projectile towards target
//arg0 -- Projectile Object to draw
//arg1 -- Attack Target
//arg2 -- Attack Status
//arg3 -- Damage

attackObject = argument0;
attackTarget = argument1;
attackStatus = argument2;
tempDamage = argument3;

attackDir = point_direction(x + HALF_NODE_SIZE, y + HALF_NODE_SIZE, attackTarget.x + HALF_NODE_SIZE, attackTarget.y + HALF_NODE_SIZE);
                
    beginX = x + HALF_NODE_SIZE + lengthdir_x(30, attackDir);
    beginY = y + HALF_NODE_SIZE + lengthdir_y(30, attackDir);
    
    //populate variables inside of attackObject
    with(instance_create(beginX, beginY, attackObject)) {
        target = other.attackTarget;
        atkStatus = other.attackStatus;
        damage = other.tempDamage;
        
        path_add_point(movementPath, other.beginX, other.beginY, 100);
        
        if(atkStatus != "miss" && atkStatus != "dodged") {
            path_add_point(movementPath, target.x + HALF_NODE_SIZE, target.y + HALF_NODE_SIZE, 100);
        } else {
            path_add_point(movementPath, target.x + (irandom_range(35, 40) * choose (-1, 1)), target.y + (irandom_range(35, 40) * choose (-1, 1)), 100);
        }
        
        path_start(movementPath, speed, true, true);
    }
                
                
                
                
                
                
