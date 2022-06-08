
## CAST
execute as @e[scores={swordLife=1..}] at @s run tp @s ^ ^ ^3
execute as @e[scores={swordLife=1..}] at @s anchored eyes run function dafi:class/shade/castparticle
execute at @e[scores={swordLife=1..},tag=blueSword] run tag @e[distance=..3,team=!blue,tag=!swordCast] add markedByBlue
execute at @e[scores={swordLife=1..},tag=redSword] run tag @e[distance=..3,team=!red,tag=!swordCast] add markedByRed
execute at @e[scores={swordLife=1..},tag=blueSword] run scoreboard players set @e[distance=..3,team=!blue,tag=!swordCast] castTagged 1
execute at @e[scores={swordLife=1..},tag=redSword] run scoreboard players set @e[distance=..3,team=!red,tag=!swordCast] castTagged 1

## MARKED
execute as @e[tag=markedByBlue,team=!blue] run function dafi:class/shade/marked/markedbyblue
execute as @e[tag=markedByRed,team=!red] run function dafi:class/shade/marked/markedbyred



kill @e[scores={swordLife=20..}]
scoreboard players add @e[type=minecraft:armor_stand,tag=swordCast] swordLife 1


