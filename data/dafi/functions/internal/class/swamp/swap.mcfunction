
execute if data entity @s Inventory[{Slot:-106b}].tag.swap run say Swap
execute if data entity @s Inventory[{Slot:-106b}].tag.swap run tag @s add dafi.swamp.swap

execute if entity @s[tag=dafi.swamp.swap] unless score @s dafi.swamp.TPTrigger matches 0.. run say FAGGOT!

execute if entity @s[tag=dafi.swamp.swap] run clear ender_eye
execute if entity @s[tag=dafi.swamp.swap] run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if entity @s[tag=dafi.swamp.swap] run item replace entity @s weapon.offhand with air

tag @s remove dafi.swamp.swap

advancement revoke @s only dafi:inventory_changed