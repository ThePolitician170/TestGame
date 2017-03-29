//arg0 - Caster of ability/spell
//arg1 - Origin node to check
//arg2 - Radius size to check
//arg3 - Targets -> Friendly, enemy, or ALL

caster = argument0;
origin = argument1;
radius = argument2;
targets = argument3;



for(ii = 0; ii <ds_list_size(origin.neighbors); ii += 1) {
    current = ds_list_find_value(tempNode.neighbors, ii);
    
    if(current.occupant != noone) {
    
    }
}























