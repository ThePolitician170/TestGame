//arg0 -- Actor casting magic
//arg1 -- element of magic
//arg2 -- Magic attack status

actor = argument0;
element = argument1;
magicAtkStatus = argument2;

damage = actor.magicAttack + ds_map_find_value(actor.magicDamageMap, element);

if(magicAtkStatus == "crit") {
    damage = round(damage * 1.5);
}

return damage;














