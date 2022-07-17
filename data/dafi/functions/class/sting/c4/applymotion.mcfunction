## 100% stolen from timber forge

execute store result score @s sting_x1 run data get entity @s Pos[0] 1000
execute store result score @s sting_y1 run data get entity @s Pos[1] 1000
execute store result score @s sting_z1 run data get entity @s Pos[2] 1000

# figure it out later
# execute at @s run tp @s ~ ~1 ~

execute store result score @s sting_x2 run data get entity @s Pos[0] 1000
execute store result score @s sting_y2 run data get entity @s Pos[1] 1000
execute store result score @s sting_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.010 run scoreboard players operation @s sting_x2 -= @s sting_x1
execute store result entity @s Motion[1] double 0.010 run scoreboard players operation @s sting_y2 -= @s sting_y1
execute store result entity @s Motion[2] double 0.010 run scoreboard players operation @s sting_z2 -= @s sting_z1