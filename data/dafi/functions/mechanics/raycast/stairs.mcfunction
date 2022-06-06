execute store result score #x raycast run data get entity @s Pos[0] 100.0
execute store result score .y raycast run data get entity @s Pos[1] 100.0
execute store result score #z raycast run data get entity @s Pos[2] 100.0
scoreboard players operation #x raycast %= #100 raycast
scoreboard players operation .y raycast %= #100 raycast
scoreboard players operation #z raycast %= #100 raycast

### Rotation Invarience
scoreboard players operation .x raycast = #x raycast
scoreboard players operation .z raycast = #z raycast
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function dafi:mechanics/raycast/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function dafi:mechanics/raycast/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function dafi:mechanics/raycast/transforms/rotate_270

scoreboard players set #bool raycast 0
### Shape = Straight
execute if score .x raycast matches 55.. run scoreboard players set #bool raycast 1

### Shapes
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z raycast matches ..45 run scoreboard players set #bool raycast 1
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z raycast matches 55.. run scoreboard players set #bool raycast 1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z raycast matches 45.. run scoreboard players set #bool raycast 0
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z raycast matches ..55 run scoreboard players set #bool raycast 0

### Bottom Step
execute store result score #type raycast if block ~ ~ ~ #minecraft:stairs[half=bottom]
execute if score #type raycast matches 1 if score .y raycast matches ..55 run scoreboard players set #bool raycast 1
execute if score #type raycast matches 0 if score .y raycast matches 45.. run scoreboard players set #bool raycast 1

execute if score #bool raycast matches 1 run scoreboard players set .itt raycast 0