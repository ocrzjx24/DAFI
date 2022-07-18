execute unless score @s fishingRodCD matches 1.. unless score @s inventoryChangedFishingBypass matches 1.. if score @s crossbowMainhand matches 0 run item replace entity @s[tag=!dafi.siege.offhand.processed] weapon.offhand with fishing_rod
execute unless score @s fishingRodCD matches 1.. unless score @s inventoryChangedFishingBypass matches 1.. if score @s crossbowMainhand matches 0 run tag @s[tag=!dafi.siege.offhand.processed] add dafi.siege.offhand.processed
execute unless score @s crossbowMainhand matches 1 if score @s fishingRodCD matches 0 run item replace entity @s weapon.offhand with fishing_rod

execute if score @s crossbowMainhand matches 1 as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] at @s run playsound minecraft:block.chain.hit master @a[distance=..5] ~ ~ ~ 1 1.5
execute if score @s crossbowMainhand matches 1 as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] run clear @s fishing_rod
execute if score @s crossbowMainhand matches 1 as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s

execute if score @s crossbowMainhand matches 1 run clear @s[tag=dafi.siege.offhand.processed] fishing_rod 
execute if score @s crossbowMainhand matches 1 run tag @s[tag=dafi.siege.offhand.processed] remove dafi.siege.offhand.processed