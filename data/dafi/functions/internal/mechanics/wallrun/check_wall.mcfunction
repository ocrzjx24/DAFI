execute store result score @s dafi.dash.rotation run data get entity @s Rotation[0] 1
execute if block ~ ~ ~-0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~ ~ ~-1 align z positioned ~ ~-1 ~0.8 as @s run function dafi:internal/mechanics/wallrun/at_wall
execute if block ~ ~ ~0.8 #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~ ~ ~1 align z positioned ~ ~-1 ~0.2 as @s run function dafi:internal/mechanics/wallrun/at_wall
execute if block ~-0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air positioned ~-1 ~ ~ align x positioned ~0.8 ~-1 ~ run function dafi:internal/mechanics/wallrun/at_wall
execute if block ~0.8 ~ ~ #dafi:blocks_wallrun if block ~ ~-0.35 ~ minecraft:air if score @s dafi.dash.rotation matches 0.. rotated 0 0 run function dafi:internal/mechanics/wallrun/at_wall
