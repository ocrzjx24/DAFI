execute store result score #x dafi.raycast run data get entity @s Pos[0] 100.0
execute store result score .y dafi.raycast run data get entity @s Pos[1] 100.0
execute store result score #z dafi.raycast run data get entity @s Pos[2] 100.0
scoreboard players operation #x dafi.raycast %= #100 dafi.raycast
scoreboard players operation .y dafi.raycast %= #100 dafi.raycast
scoreboard players operation #z dafi.raycast %= #100 dafi.raycast

### Rotation Invarience
scoreboard players operation .x dafi.raycast = #x dafi.raycast
scoreboard players operation .z dafi.raycast = #z dafi.raycast
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function dafi:internal/mechanics/raycast/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function dafi:internal/mechanics/raycast/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function dafi:internal/mechanics/raycast/transforms/rotate_270

scoreboard players set #bool dafi.raycast 0
### Shape = Straight
execute if score .x dafi.raycast matches 55.. run scoreboard players set #bool dafi.raycast 1

### Shapes
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z dafi.raycast matches ..45 run scoreboard players set #bool dafi.raycast 1
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z dafi.raycast matches 55.. run scoreboard players set #bool dafi.raycast 1
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z dafi.raycast matches 45.. run scoreboard players set #bool dafi.raycast 0
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z dafi.raycast matches ..55 run scoreboard players set #bool dafi.raycast 0

### Bottom Step
execute store result score #type dafi.raycast if block ~ ~ ~ #minecraft:stairs[half=bottom]
execute if score #type dafi.raycast matches 1 if score .y dafi.raycast matches ..55 run scoreboard players set #bool dafi.raycast 1
execute if score #type dafi.raycast matches 0 if score .y dafi.raycast matches 45.. run scoreboard players set #bool dafi.raycast 1

execute if score #bool dafi.raycast matches 1 run scoreboard players set .itt dafi.raycast 0