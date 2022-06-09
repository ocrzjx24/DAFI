#OBSOLETE



## HUNTED
execute at @s[scores={castTagged=1..},team=!blue] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=blue]
execute at @s[scores={castTagged=1..},team=!red] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=red]
execute at @s[scores={castTagged=1..},team=!blue] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=blue]
execute at @s[scores={castTagged=1..},team=!red] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=red]
#effect give @s[scores={castTagged=1}] blindness 1 0 true
#effect give @s[scores={castTagged=1}] glowing 1 0 true

tag @s[scores={castTagged=1}] remove recur
execute at @s[scores={castTagged=1},team=!blue] run tag @e[distance=..10,team=!red,tag=!swordCast,tag=!recur] add markedByBlue
execute at @s[scores={castTagged=1},team=!red] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recur] add markedByRed
execute at @s[scores={castTagged=1},team=!blue] run tag @e[distance=..10,team=!red,tag=!swordCast,tag=!recur] add recuredByBlue
execute at @s[scores={castTagged=1},team=!red] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recur] add recuredByRed
execute at @s[scores={castTagged=1},team=!blue] run scoreboard players set @e[distance=..10,team=!blue,tag=!swordCast,tag=!recuredByBlue] castTagged 1
execute at @s[scores={castTagged=1},team=!red] run scoreboard players set @e[distance=..10,team=!red,tag=!swordCast,tag=!recuredByRed] castTagged 1

tag @s[scores={castTagged=180..}] remove marked
scoreboard players reset @s[scores={castTagged=180..}] castTagged
scoreboard players add @s castTagged 1

# SWAMP YOU BETTER RUN
#title @s[tag=castTagged] actionbar {"text":"! MARKED !","bold":true,"color":"dark_red"}

#HUNTED DEATHCHECK
scoreboard players set @s[scores={deathcheck=1..,castTagged=1..}] castTagged 99