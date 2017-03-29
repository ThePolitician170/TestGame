//arg0 -- actor whose buttons to create

actor = argument0;

//DEBUGGING REMOVE LATER
//show_message(actor.name);

buttonList = ds_list_create();

if(actor.canAct) {
    if(actor.firstLevelSlot > 0) {
        for(ii = 0; ii < ds_list_size(actor.firstLevelSpellList); ii += 1) {
            ds_list_add(buttonList, ds_list_find_value(actor.firstLevelSpellList, ii));
        }
    }
}

for(ii = 0; ii < ds_list_size(actor.defaultActions); ii += 1) {
    ds_list_add(buttonList, ds_list_find_value(actor.defaultActions, ii));
}

buttonY = room_height - (NODE_SIZE+HALF_NODE_SIZE);
buttonX = room_width/2 - ((ds_list_size(buttonList) - 1) * 48);

for(ii = 0; ii < ds_list_size(buttonList); ii += 1) {
    button = ds_list_find_value(buttonList, ii);
    
    switch(button) {
        //Default actions-------------------------------------------------------
        case "end turn":
            with(instance_create(buttonX + (ii * 96), buttonY, oButton)) {
                sprite_index = sButtonEndTurn;
                
                title = "END TURN";
                
                text = "End " + other.actor.name + "'s turn.";
                
                hotKey = "X";
            }
            break;
            
        //Cleric Spells-------------------------------------------------------------
        case "Mend Wounds":
            with(instance_create(buttonX + (ii * 96), buttonY, oButton)) {
                
                title = "Mend Wounds";
                
                text = "Heal selected target";
                
                hotKey = string(other.ii + 1);
                
                spell = true;
                
                spellSlot = string(other.actor.firstLevelSlot);
            }
            break;
            
        case "Light Aura":
            with(instance_create(buttonX + (ii * 96), buttonY, oButton)) {
                
                title = "Light Aura";
                
                text = "Phys and Mag DEF UP";
                
                hotKey = string(other.ii + 1);
                
                spell = true;
                
                spellSlot = string(other.actor.firstLevelSlot);
            }
            break;
            
        //Wizard Spells-------------------------------------------------------------
        case "Burning Hands":
            with(instance_create(buttonX + (ii * 96), buttonY, oButton)) {
                
                title = "Burning Hands";
                
                text = "Emit a cone of flames!#FIRE damage (AoE)";
                
                hotKey = string(other.ii + 1);
                
                spell = true;
                
                spellSlot = string(other.actor.firstLevelSlot);
            }
            break;
            
        case "Magic Missiles":
            with(instance_create(buttonX + (ii * 96), buttonY, oButton)) {
                
                title = "Magic Missiles";
                
                text = "Fire a Magic Missle at each visible enemy";
                
                hotKey = string(other.ii + 1);
                
                spell = true;
                
                spellSlot = string(other.actor.firstLevelSlot);
            }
            break;
    }
    
}

ds_list_destroy(buttonList);














































