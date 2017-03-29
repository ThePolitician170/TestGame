//Determines the status of an attack "hit" "miss" "crit" or "dodged"
attackStatus = "ERROR";
attackRoll = irandom_range(1, 100);

//Check if attack was a "hit"
if(attackRoll <= accuracy) {
    attackStatus = "hit";
    
    //Check if critical attack
    critRoll = irandom_range(1, 100);
    if(critRoll <= critChance) {
        attackStatus = "crit";
    }

    //Check if target dodged attack
    dodgeRoll = irandom_range(1, 100);
    if(dodgeRoll <= attackTarget.dodgeChance) {
        attackStatus = "dodged";
    }
    
} else {
    attackStatus = "miss";

}

return attackStatus;


