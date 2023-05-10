function dafi:internal/class/shade/visible_cooldowns

## OFFHAND
# Returns items after beign swapped
function dafi:internal/class/shade/offhand/offhand

## USE OFFHAND
# Slashes in front of player
function dafi:internal/class/shade/offhand/use_offhand

## SWAP ()
execute if score @s dafi.shade.swap.cooldown matches 1 run playsound minecraft:block.ender_chest.open master @s ~ ~100 ~ 1000 1.2
execute if score @s dafi.shade.swap.cooldown matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]
#execute if score @s dafi.shade.swap.cooldown matches 75.. run scoreboard players set @s delta.addition.magnitude 500
#execute if score @s dafi.shade.swap.cooldown matches 75.. at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
#execute if score @s dafi.shade.swap.cooldown matches 78.. run scoreboard players set @s delta.addition.magnitude 1600
#execute if score @s dafi.shade.swap.cooldown matches 78.. at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players remove @s dafi.shade.swap.cooldown 1

#> DROP ()
#
# Start condition
execute if score @s dafi.shade.dropNetheriteSword matches 1 run function dafi:internal/class/shade/drop/triggered
# Player disappears
execute if score @s dafi.shade.drop.cooldown matches 260 at @s run function dafi:internal/class/shade/drop/disappear
# Cancels invisibility with slide
execute if score @s dafi.shade.drop.cooldown matches 160.. if score @s dafi.slide.slideTime matches 1.. run scoreboard players set @s dafi.shade.drop.cooldown 160
# Player reappears
execute if score @s dafi.shade.drop.cooldown matches 160 at @s run function dafi:internal/class/shade/drop/reappear
# Cooldowns
execute if score @s dafi.shade.drop.cooldown matches ..0 run playsound minecraft:block.chorus_flower.death master @s ~ ~100 ~ 1000 1
execute if score @s dafi.shade.drop.cooldown matches ..0 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Drop","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.shade.drop.cooldown matches ..0 run scoreboard players reset @s dafi.shade.drop.cooldown
execute if score @s dafi.shade.drop.cooldown matches ..260 run scoreboard players remove @s dafi.shade.drop.cooldown 1
execute if score @s dafi.shade.dropNetheriteSword matches 1.. run scoreboard players reset @s dafi.shade.dropNetheriteSword

