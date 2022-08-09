#OBSOLETE; this originaly existed in the marked folder

## HUNTED
execute at @s[scores={dafi.shade.castTagged=1..},team=!blue] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=blue]
execute at @s[scores={dafi.shade.castTagged=1..},team=!red] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=red]
execute at @s[scores={dafi.shade.castTagged=1..},team=!blue] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=blue]
execute at @s[scores={dafi.shade.castTagged=1..},team=!red] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=red]
effect give @s[scores={dafi.shade.castTagged=1}] blindness 1 0 true
#effect give @s[scores={dafi.shade.castTagged=1}] glowing 1 0 true

tag @s[scores={dafi.shade.castTagged=1}] remove dafi.shade.recur
execute at @s[scores={dafi.shade.castTagged=1},team=!blue] run tag @e[distance=..10,team=!red,tag=!dafi.shade.swordCast,tag=!dafi.shade.recur] add dafi.shade.markedByBlue
execute at @s[scores={dafi.shade.castTagged=1},team=!red] run tag @e[distance=..10,team=!blue,tag=!dafi.shade.swordCast,tag=!dafi.shade.recur] add dafi.shade.markedByRed
execute at @s[scores={dafi.shade.castTagged=1},team=!blue] run tag @e[distance=..10,team=!red,tag=!dafi.shade.swordCast,tag=!dafi.shade.recur] add dafi.shade.dafi.shade.recuredByBlue
execute at @s[scores={dafi.shade.castTagged=1},team=!red] run tag @e[distance=..10,team=!blue,tag=!dafi.shade.swordCast,tag=!dafi.shade.recur] add dafi.shade.dafi.shade.recuredByRed
execute at @s[scores={dafi.shade.castTagged=1},team=!blue] run scoreboard players set @e[distance=..10,team=!blue,tag=!dafi.shade.swordCast,tag=!dafi.shade.dafi.shade.recuredByBlue] dafi.shade.castTagged 1
execute at @s[scores={dafi.shade.castTagged=1},team=!red] run scoreboard players set @e[distance=..10,team=!red,tag=!dafi.shade.swordCast,tag=!dafi.shade.dafi.shade.recuredByRed] dafi.shade.castTagged 1

tag @s[scores={dafi.shade.castTagged=180..}] remove marked
scoreboard players reset @s[scores={dafi.shade.castTagged=180..}] dafi.shade.castTagged
scoreboard players add @s dafi.shade.castTagged 1

# SWAMP YOU BETTER RUN
#title @s[tag=dafi.shade.castTagged] actionbar {"text":"! MARKED !","bold":true,"color":"dark_red"}

#HUNTED dafi.shade.deathcheck
scoreboard players set @s[scores={dafi.shade.deathcheck=1..,dafi.shade.castTagged=1..}] dafi.shade.castTagged 99