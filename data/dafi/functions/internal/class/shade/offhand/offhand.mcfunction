execute if score @s dafi.offhandReady matches 1 if predicate dafi:is_swap_trigger run item replace entity @s[tag=!dafi.offhandProcessed] weapon.offhand with warped_fungus_on_a_stick{offhand:1} 1
execute if score @s dafi.offhandReady matches 1 if predicate dafi:is_swap_trigger run tag @s[tag=!dafi.offhandProcessed] add dafi.offhandProcessed

execute unless predicate dafi:is_swap_trigger run clear @s minecraft:warped_fungus_on_a_stick 1
#execute unless predicate dafi:is_swap_trigger run tag @s[tag=dafi.offhandProcessed] remove dafi.offhandProcessed