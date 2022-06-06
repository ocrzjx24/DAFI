tag @s add this
scoreboard players operation .search sid = @s sid
execute as @e[tag=!this] if score @s sid = .search sid run data modify block 1 0 0 Items[0] set from entity @s HandItems[1]
execute as @e[tag=!this] if score @s sid = .search sid run kill @s
tag @s remove this
