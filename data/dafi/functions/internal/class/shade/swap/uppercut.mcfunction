##> dafi:internal/class/shade/swap/uppercut
# runs uppercut slash and applies motion to players
#
# callers:
# > dafi:internal/class/shade/swap/swapstart

scoreboard players set @s dafi.shade.swap.cooldown 120
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
execute at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
execute at @s rotated ~ 0 positioned ~ ~1 ~ run function dafi:internal/class/shade/slash/slashtype/slash7
#execute store result score @s delta.addition.magnitude run data get entity @s Motion[1] -10000
#execute at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
scoreboard players set @s delta.addition.magnitude 4000
execute at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
scoreboard players set @s delta.addition.magnitude 4000
execute at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion