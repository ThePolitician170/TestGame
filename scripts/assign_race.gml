//arg0 -- Race

//if argument not defined then Race = Human
if(argument_count == 0) {
    race = "Human";
} else {
    race = argument0;
}

switch(race) {
    case "Human":
    
        strMod += 3;
        endMod += 3;
        vitMod += 3;
        dexMod += 3;
        intMod += 3;
        wisMod += 3;
    
    break;
    
    case "Goblin":
        
        strMod += 1;
        endMod += 0;
        vitMod += 1;
        dexMod += 1;
        intMod += 0;
        wisMod += 0;
        
    break;
}
