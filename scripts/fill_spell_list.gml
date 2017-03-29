//arg0 -- Actor whose list to fill

actor = argument0;

switch(actor.class) {
    case "Cleric":
        give_cleric_spells(actor);
        
        if(actor.advClass == "Demonist"){
            give_demonist_spells(actor);
        }
        
        if(actor.advClass == "Exorcist") {
            give_exorcist_spells(actor);
        }
        
        break;
        
        case "Wizard":
        give_wizard_spells(actor);
        
        if(actor.advClass == "Demonist"){
            give_battlemage_spells(actor);
        }
        
        if(actor.advClass == "Exorcist") {
            give_sorcerer_spells(actor);
        }
        
        break;
            
}













