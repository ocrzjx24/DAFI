execute store result score #x dafi.raycast run data get entity @s Pos[0] 100.0
execute store result score #z dafi.raycast run data get entity @s Pos[2] 100.0
scoreboard players operation #x dafi.raycast %= #100 dafi.raycast
scoreboard players operation #z dafi.raycast %= #100 dafi.raycast

### Rotation Invarience
scoreboard players operation .x dafi.raycast = #x dafi.raycast
scoreboard players operation .z dafi.raycast = #z dafi.raycast
execute if block ~ ~ ~ #minecraft:doors[facing=north] run function dafi:internal/mechanics/raycast/transforms/rotate_90
execute if block ~ ~ ~ #minecraft:doors[facing=west] run function dafi:internal/mechanics/raycast/transforms/rotate_180
execute if block ~ ~ ~ #minecraft:doors[facing=south] run function dafi:internal/mechanics/raycast/transforms/rotate_270

execute if block ~ ~ ~ #minecraft:doors[hinge=left,open=true] if score .z dafi.raycast matches ..25 run scoreboard players set .itt dafi.raycast 0
execute if block ~ ~ ~ #minecraft:doors[hinge=right,open=true] if score .z dafi.raycast matches 75.. run scoreboard players set .itt dafi.raycast 0
execute if block ~ ~ ~ #minecraft:doors[open=false] if score .x dafi.raycast matches ..25 run scoreboard players set .itt dafi.raycast 0