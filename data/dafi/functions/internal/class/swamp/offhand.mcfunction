execute if score @s dafi.offhandReady matches 1 if predicate dafi:is_swap_trigger run item replace entity @s[tag=!dafi.offhandProcessed] weapon.offhand with ender_pearl{offhand:1,display:{Name:'[{"text":"Mire","italic":false,"bold":true,"color":"dark_red"}]'},Enchantments:[{id:"minecraft:unbreaking",lvl:10}],HideFlags:1} 1
#execute if score @s dafi.offhandReady matches 1 if predicate dafi:is_swap_trigger run tag @s[tag=!dafi.offhandProcessed] add dafi.offhandProcessed

execute unless predicate dafi:is_swap_trigger run clear @s[tag=!dafi.offhandProcessed] ender_pearl
#execute unless predicate dafi:is_swap_trigger run tag @s[tag=dafi.offhandProcessed] remove dafi.offhandProcessed 