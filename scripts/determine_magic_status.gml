//Determines the status of a magic attack "hit" or "crit"

magicAtkStatus = "ERROR";
//All magic attacks always "hit"
magicAtkStatus = "hit";
    
    //Check if critical attack
    critRoll = irandom_range(1, 100);
    if(critRoll <= magicCritChance) {
        magicAtkStatus = "crit";
    }

return magicAtkStatus;



























