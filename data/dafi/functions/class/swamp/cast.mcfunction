execute as @e[scores={roarLife=1..}] at @s run tp @s ^ ^ ^3
execute as @e[scores={roarLife=1..}] at @s run function dafi:class/swamp/castparticle
execute at @e[scores={roarLife=1..}] run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 1.8
execute at @e[scores={roarLife=1..},tag=blueRoar] run tag @e[distance=..3,team=!blue,tag=!roarCast] add rawr
execute at @e[scores={roarLife=1..},tag=redRoar] run tag @e[distance=..3,team=!red,tag=!roarCast] add rawr
# execute at @e[scores={roarLife=1..},tag=redSword] run tag @e[distance=..3,team=!red,tag=!swordCast] add markedByRed
# execute at @e[scores={roarLife=1..},tag=blueSword] run scoreboard players set @e[distance=..3,team=!blue,tag=!swordCast] castTagged 1
# execute at @e[scores={roarLife=1..},tag=redSword] run scoreboard players set @e[distance=..3,team=!red,tag=!swordCast] castTagged 1

## MARKED
# execute as @e[tag=markedByBlue,team=!blue] run function dafi:class/shade/marked/markedbyblue
# execute as @e[tag=markedByRed,team=!red] run function dafi:class/shade/marked/markedbyred



kill @e[scores={roarLife=20..}]
scoreboard players add @e[type=minecraft:armor_stand,tag=roarCast] roarLife 1