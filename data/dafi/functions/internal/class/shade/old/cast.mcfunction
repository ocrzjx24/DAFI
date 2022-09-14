##> dafi:internal/class/shade/cast
# casts shade's raycast
#
# callers:
# > ?

# CAST
execute as @e[scores={dafi.shade.swordLife=1..}] at @s run tp @s ^ ^ ^3
execute as @e[scores={dafi.shade.swordLife=1..}] at @s anchored eyes run function dafi:internal/class/shade/castparticle
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.blueSword] run tag @e[distance=..3,team=!blue,tag=!dafi.shade.swordCast] add dafi.shade.markedByBlue
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.redSword] run tag @e[distance=..3,team=!red,tag=!dafi.shade.swordCast] add dafi.shade.markedByRed
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.blueSword] run scoreboard players set @e[distance=..3,team=!blue,tag=!dafi.shade.swordCast] dafi.shade.castTagged 1
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.redSword] run scoreboard players set @e[distance=..3,team=!red,tag=!dafi.shade.swordCast] dafi.shade.castTagged 1

# MARKED
execute as @e[tag=dafi.shade.markedByBlue,team=!blue] run function dafi:internal/class/shade/marked/markedbyblue
execute as @e[tag=dafi.shade.markedByRed,team=!red] run function dafi:internal/class/shade/marked/markedbyred

kill @e[scores={dafi.shade.swordLife=20..}]
scoreboard players add @e[type=minecraft:armor_stand,tag=dafi.shade.swordCast] dafi.shade.swordLife 1


