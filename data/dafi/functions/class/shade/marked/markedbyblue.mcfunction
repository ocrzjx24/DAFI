##### !BLUE

## INITIAL INSTANCE
effect give @s[scores={castTagged=1}] blindness 1 0 true
effect give @s[scores={castTagged=1}] glowing 1 0 true

execute at @s[scores={castTagged=1..}] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force @a[tag=shade,team=blue]
execute at @s[scores={castTagged=1..}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=blue]

## RECURSION INSTANCE
tag @s[scores={castTagged=2}] remove recuredByBlue
execute at @s[scores={castTagged=2}] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recur] add markedByBlue
execute at @s[scores={castTagged=2}] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recur] add recuredByBlue
execute at @s[scores={castTagged=2}] run scoreboard players set @e[distance=..10,team=!blue,tag=!swordCast,tag=!recuredByBlue] castTagged 1

## MARKED RESET
tag @s[scores={castTagged=180..}] remove markedByBlue
scoreboard players reset @s[scores={castTagged=180..}] castTagged
scoreboard players add @s[scores={castTagged=1..}] castTagged 1