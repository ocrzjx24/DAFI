execute if entity @s[team=blue] run scoreboard players set @a[team=!blue,distance=..6] delta.addition.magnitude 10000
execute if entity @s[team=red] run scoreboard players set @a[team=!red,distance=..6] delta.addition.magnitude 10000
execute if entity @s[team=ffa] run scoreboard players set @a[team=!red,distance=..6] delta.addition.magnitude 10000
scoreboard players reset @s[team=ffa] delta.addition.magnitude
execute as @s[team=blue] rotated as @s rotated ~ -90 as @a[team=!blue,distance=..6] run function dafi:internal/mechanics/addition/add_motion
execute as @s[team=red] rotated as @s rotated ~ -90 as @a[team=!red,distance=..6] run function dafi:internal/mechanics/addition/add_motion
execute as @s[team=ffa] rotated as @s rotated ~ -90 as @a[distance=..6] run function dafi:internal/mechanics/addition/add_motion
