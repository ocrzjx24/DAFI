##### !RED

## INITIAL INSTANCE
effect give @s[scores={castTagged=1}] blindness 1 0 true
tag @s[scores={castTagged=1}] add glow

#effect give @s[scores={castTagged=1}] glowing 1 0 true

execute at @s[scores={castTagged=1}] run playsound minecraft:entity.allay.item_taken master @a[tag=shade,team=blue] ~ ~ ~ 1 1.5
execute at @s[scores={castTagged=1..}] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 2 force @a[tag=shade,team=blue]
execute at @s[scores={castTagged=1..}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=shade,team=blue,distance=..5]
execute at @s[scores={castTagged=1..}] run title @a[tag=shade,team=red] actionbar {"text":"! BOUND !","bold":true,"color":"light_purple"}

## RECURSION INSTANCE
execute at @s[scores={castTagged=1}] run scoreboard players set @e[distance=..10,team=!blue,tag=!swordCast,tag=!recuredByBlue] castTagged 1
execute at @s[scores={castTagged=1}] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recuredByBlue] add markedByBlue
execute at @s[scores={castTagged=1}] run tag @e[distance=..10,team=!blue,tag=!swordCast,tag=!recuredByBlue] add recuredByBlue
tag @s[scores={castTagged=20}] remove recuredByBlue



## MARKED RESET
tag @s[scores={castTagged=180..}] remove markedByBlue
scoreboard players reset @s[scores={castTagged=180..}] castTagged
scoreboard players add @s[scores={castTagged=1..}] castTagged 1
