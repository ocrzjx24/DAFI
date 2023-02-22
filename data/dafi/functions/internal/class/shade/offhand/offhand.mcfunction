execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 unless data entity @s Inventory[{Slot:-106b}].tag.mainhand run item replace entity @s[tag=!dafi.offhandProcessed] weapon.offhand with warped_fungus_on_a_stick{offhand:1} 1
execute if score @s dafi.offhandReady matches 1 if score @s dafi.crossbowMainhand matches 0 unless data entity @s Inventory[{Slot:-106b}].tag.mainhand run tag @s[tag=!dafi.offhandProcessed] add dafi.offhandProcessed

execute if score @s dafi.crossbowMainhand matches 1 run clear @s[tag=dafi.offhandProcessed] minecraft:warped_fungus_on_a_stick 1
execute if score @s dafi.crossbowMainhand matches 1 run tag @s[tag=dafi.offhandProcessed] remove dafi.offhandProcessed