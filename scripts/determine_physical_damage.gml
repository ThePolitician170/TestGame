//Determine amount of damage done by attack
//arg0 -- attackStatus from determine_attack_status
var damage = 0;

if(argument0 == "miss" || argument0 == "dodged") {
    return damage;
} else {

    damageRange = attack - attackTarget.defense;
    if(damageRange < 2) {
        damageRange = 0;
        damage = irandom_range(damageRange, damageRange+2);
    } else {
        damage = irandom_range(damageRange-2, damageRange+2)
    }
    
    if(argument0 == "crit") {
        damage = round(damage * 1.5);
    }
    
    return damage;
    
}


