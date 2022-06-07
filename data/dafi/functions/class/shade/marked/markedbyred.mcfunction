##### !RED

## INITIAL INSTANCE
effect give @s[scores={castTagged=1}] blindness 1 0 true
effect give @s[scores={castTagged=1}] glowing 1 0 true

execute at @s[scores={castTagged=1..}] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=red]
execute at @s[scores={castTagged=1..}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=red]

## RECURSION INSTANCE
execute at @s[scores={castTagged=1}] run scoreboard players set @e[distance=..10,team=!red,tag=!swordCast,tag=!recuredByRed] castTagged 1
execute at @s[scores={castTagged=1}] run tag @e[distance=..10,team=!red,tag=!swordCast,tag=!recuredByRed] add markedByRed
execute at @s[scores={castTagged=1}] run tag @e[distance=..10,team=!red,tag=!swordCast,tag=!recuredByRed] add recuredByRed
tag @s[scores={castTagged=2}] remove recuredByRed

## MARKED RESET
tag @s[scores={castTagged=180..}] remove markedByRed
scoreboard players reset @s[scores={castTagged=180..}] castTagged
scoreboard players add @s[scores={castTagged=1..}] castTagged 1
