execute as @e[type=item,tag=!processed, tag=!blood, tag=!C4] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!processed, tag=!blood, tag=!C4] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,tag=!blood, tag=!C4] at @s run tp @s @p
tag @e[type=item, tag=!blood, tag=!C4] add processed