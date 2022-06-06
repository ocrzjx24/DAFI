## get y coord's decimal points (ex: Y=69.45 -> .y = 45) 
execute store result score .y raycast run data get entity @s Pos[1] 100.0
scoreboard players operation .y raycast %= #100 raycast

## check if its a bottom slab
execute store result score .type raycast if block ~ ~ ~ #minecraft:slabs[type=bottom]
## if double slab, dont go through at all
execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set .itt raycast 0
## if bottom slab, stop raycast if inside bottom part
execute if score .type raycast matches 1 if score .y raycast matches ..55 run scoreboard players set .itt raycast 0
## if top slab, stop raycast if inside top part
execute if score .type raycast matches 0 if score .y raycast matches 45.. run scoreboard players set .itt raycast 0