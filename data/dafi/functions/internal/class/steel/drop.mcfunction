execute if entity @s[team=blue] run scoreboard players set @a[team=!blue,distance=..7.5] delta.addition.magnitude 8000
execute if entity @s[team=red] run scoreboard players set @a[team=!red,distance=..7.5] delta.addition.magnitude 8000
execute if entity @s[team=ffa] run scoreboard players set @a[team=!red,distance=..7.5] delta.addition.magnitude 8000
scoreboard players reset @s[team=ffa] delta.addition.magnitude
execute if entity @s[team=blue] facing entity @s feet as @a[team=!blue,distance=..7.5] run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[team=red] facing entity @s feet as @a[team=!red,distance=..7.5] run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[team=ffa] facing entity @s feet as @a[distance=..7.5] run function dafi:internal/mechanics/addition/add_motion
