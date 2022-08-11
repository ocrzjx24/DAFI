scoreboard players operation $x delta.api.launch = @s delta.addition.x
scoreboard players operation $y delta.api.launch = @s delta.addition.y
scoreboard players operation $z delta.api.launch = @s delta.addition.z

execute at @s run function dafi:delta/api/launch_xyz

scoreboard players reset $x delta.api.launch
scoreboard players reset $y delta.api.launch
scoreboard players reset $z delta.api.launch

scoreboard players reset @s delta.addition.x
scoreboard players reset @s delta.addition.y
scoreboard players reset @s delta.addition.z

tag @s remove delta.addition.to_launch