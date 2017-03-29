//arg0 -- Actor who we are giving Wizard spells

actor = argument0;

for(ii = 1; ii <= actor.level; ii += 1) {
    switch(ii) {
        case 1:
            //ds_list_add(actor.firstLevelSpellList, "Rock Toss");
            ds_list_add(actor.firstLevelSpellList, "Burning Hands");
            ds_list_add(actor.firstLevelSpellList, "Magic Missiles");
            break;
        case 3:
            ds_list_add(actor.firstLevelSpellList, "Fire Blast");
            ds_list_add(actor.firstLevelSpellList, "Ice Blast");
            ds_list_add(actor.firstLevelSpellList, "Lightning Blast");
            break;
    }
    
}









