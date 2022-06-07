## CAST
execute as @e[scores={swordLife=1..}] at @s run tp @s ^ ^ ^3
execute as @e[scores={swordLife=1..}] at @s anchored eyes run function dafi:class/shade/castparticle
execute as @e[scores={swordLife=1..},tag=redSword] run tag @a[distance=..3.5,team=!red] add marked
execute as @e[scores={swordLife=1..},tag=blueSword] run tag @a[distance=..3.5,team=!blue] add marked

## MARKED
execute as @a[tag=castTagged] run function dafi:class/shade/casttagged

kill @e[scores={swordLife=20..}]
scoreboard players add @e[type=minecraft:armor_stand,tag=swordCast] swordLife 1


