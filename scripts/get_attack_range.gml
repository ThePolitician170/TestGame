//arg0 -- Actor whose range we are determining

actor = argument0;

switch(actor.attackType) {
            case "ranged":
                ranged_attack_range(actor);
                break;
            
            case "melee":
                melee_attack_range(actor);
                break;
        
       }
