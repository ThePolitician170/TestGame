//argument0 -- actor performing action
//argument1 -- button pressed

actor = argument0;
button = argument1;


switch(button.title) {
    //Default actions----------------------------------------------------------
    case "END TURN":
        actor.state = "begin action";
        actor.readiedAction = "END TURN";
        actor.targetingType = "none";
        
        with(instance_create(room_width/2, room_height, oConfirmButton)) {
            title = other.button.title;
            text = other.button.text;
            hotKey = other.button.hotKey;
        }
        
        wipe_nodes();
        wipe_buttons();
        
        
        break;
        
    //Cleric spells
    case "Mend Wounds":
        
        actor.state = "begin action";
        actor.readiedAction = "Mend Wounds";
        actor.targetingType = "singleTarAny";
        actor.abilityRange = NODE_SIZE * 3;
        
        with(instance_create(room_width/2, room_height, oConfirmBox)) {
            title = other.button.title;
            text = other.button.text;
        }
        
        wipe_nodes();
        wipe_buttons();
        
        break;
        
    case "Light Aura":
        
        actor.state = "begin action";
        actor.readiedAction = "Light Aura";
        actor.targetingType = "visible allies";
        actor.abilityRange = NODE_SIZE * 3;
        
        with(instance_create(room_width/2, room_height, oConfirmButton)) {
            title = other.button.title;
            text = other.button.text;
        }
        
        wipe_nodes();
        wipe_buttons();
        
        break;
        
    //Wizard spells------------------------------------------------------------
    case "Burning Hands":
        
        actor.state = "begin action";
        actor.readiedAction = "Burning Hands";
        actor.targetingType = "cone";
        actor.abilityRange = NODE_SIZE * 3;
        
        with(instance_create(room_width/2, room_height, oConfirmBox)) {
            title = other.button.title;
            text = other.button.text;
        }
        
        wipe_nodes();
        wipe_buttons();
        
        break;
        
    case "Magic Missiles":
        
        actor.state = "begin action";
        actor.readiedAction = "Magic Missiles";
        actor.targetingType = "visible enemies";
        actor.abilityRange = NODE_SIZE * 3;
        
        with(instance_create(room_width/2, room_height, oConfirmButton)) {
            title = other.button.title;
            text = other.button.text;
            
            hotKey = other.button.hotKey;
        }
        
        wipe_nodes();
        wipe_buttons();
        
        break;
}






























