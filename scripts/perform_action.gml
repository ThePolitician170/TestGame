//arg0 - actor performing action
//arg1 - action to be performed

actor = argument0;
action = argument1;

//Default Actions---------------------------------------------------------------
switch(action) {
    case "END TURN":
        actor.state = "end turn";
        actor.actionTimer = 20;
        break;
    //Cleric Spells-------------------------------------------------------------
    case "Mend Wounds":
        target = oCursor.hoverNode.occupant;
        
        heal = irandom_range(1, 8) + actor.wisMod;
        
        heal = min(heal, target.maxHitPoints - target.hitPoints);
        
        target.hitPoints += heal;
        
        with(instance_create(target.x + NODE_SIZE*.90, target.y + HALF_NODE_SIZE*.25, oDamageText)) {
            ground = y;
            
            text = "+" + string(other.heal);
            
            color = c_lime;
        }
        
        actor.abilityPoints -= 5;
        actor.canAct = false;
        actor.actions -= 2;
        actor.state = "end action";
        actor.actionTimer = 15;
        
        break;
    
    case "Light Aura":
        targets = ds_list_create();
        
        with(oNode) {
            if(actionNode) {
                ds_list_add(other.targets, id);
            }
            
        }
        
        for(ii = 0; ii < ds_list_size(targets); ii += 1) {
            target = ds_list_find_value(targets, ii).occupant;
            
            target.blessed = oGame.roundCounter + 5;
            
            with(instance_create(target.x, target.y, oBless)) {
                target = other.target;
            }
        }
        
        ds_list_destroy(targets);
        
        actor.abilityPoints -= 5;
        actor.canAct = false;
        actor.actions -= 2;
        actor.state = "end action";
        actor.actionTimer = 30;
       
        break;
    
      
    //Wizard Spells---------------------------------------------------------------
    case "Burning Hands":
        targets = ds_list_create();
        
        magicAtkStatus = determine_magic_status(actor);
        
        damage = determine_magic_damage(actor, "fire", magicAtkStatus);
        
        with(oNode) {
            if(actionNode) {
                ds_list_add(other.targets, id);
            }
            
        }
        
        for(ii = 0; ii < ds_list_size(targets); ii += 1) {
            node = ds_list_find_value(targets, ii);
            
            with(instance_create(node.x + HALF_NODE_SIZE, node.y + HALF_NODE_SIZE, oFlameEmitter)) {
                target = other.node.occupant;
                
                damage = other.damage;
            }
        }
        
        ds_list_destroy(targets);
        
        actor.abilityPoints -= 5;
        actor.canAct = false;
        actor.actions -= 2;
        actor.state = "end action";
        actor.actionTimer = 30;
       
        break;
        
    case "Magic Missiles":
        targets = ds_list_create();
        
        magicAtkStatus = determine_magic_status(actor);
        
        damage = determine_magic_damage(actor, "dark", magicAtkStatus);
        
        with(oNode) {
            if(actionNode) {
                ds_list_add(other.targets, id);
            }
            
        }
        
        for(ii = 0; ii < ds_list_size(targets); ii += 1) {
            target = ds_list_find_value(targets, ii).occupant;
            
            draw_projectile(oMagicBolt, target, magicAtkStatus, damage);
            
            target.hitPoints -= damage;
        }
        
        ds_list_destroy(targets);
        
        actor.abilityPoints -= 7;
        actor.canAct = false;
        actor.actions -= 2;
        actor.state = "end action";
        actor.actionTimer = 30;
       
        break;
    
}


















