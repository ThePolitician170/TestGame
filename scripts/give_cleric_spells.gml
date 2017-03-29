//arg0 -- Actor who we are giving Cleric spells

actor = argument0;

for(ii = 1; ii <= actor.level; ii += 1) {
    switch(ii) {
        case 1:
            ds_list_add(actor.firstLevelSpellList, "Mend Wounds");
            break;
        case 3:
            ds_list_add(actor.firstLevelSpellList, "Light Aura");
            break;
    }
    
}
