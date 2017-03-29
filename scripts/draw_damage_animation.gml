//argument0 -- Attack Status "hit" "miss" "crit" "dodged"
//argument1 -- Attack Target
//artument2 -- Damage

atkStatus = argument0;
target = argument1;
damage = argument2;


if(atkStatus != "miss" && atkStatus != "dodged") {
    
    for(ii = 0; ii < 6; ii += 1) {
        with(instance_create(target.x + HALF_NODE_SIZE, target.y + HALF_NODE_SIZE, oBiff)) {
            direction = irandom(360);
            speed = irandom_range(2, 4);
            scale = choose(2, 3);
            
            image_speed = .5;
            
            if(other.atkStatus == "crit") {
                color = c_yellow;
            }
            
        }    
        
    }
    
    with(instance_create(target.x + NODE_SIZE*.85, target.y + NODE_SIZE*.06, oDamageText)) {
        text = "-" + string(other.damage);
        
        ground = y;
        
        if(other.atkStatus == "crit") {
            text = "CRIT! " + text;
            font = fCritical;
        }
        
    }
    
    if(atkStatus == "crit") {
        target.shake = 8;
        target.shakeMag = 8;
    } else {
        target.shake = 4;
        target.shakeMag = 4;
    }
    
} else {
    with(instance_create(target.x + NODE_SIZE*.85, target.y + NODE_SIZE*.06, oDamageText)) {
        if(other.atkStatus == "miss") {
            text = "Miss!";
        } else if (other.atkStatus == "dodged") {
            text = "Dodged!";
        }
        
        ground = y;
        
    }
}


