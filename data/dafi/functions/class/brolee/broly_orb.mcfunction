# HOMING
execute if score @s dropEmerald matches 1..20 at @s anchored eyes facing entity @e[tag=!broly, tag=!orb, sort=nearest, limit=1] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if score @s dropEmerald matches 21..40 at @s anchored eyes facing entity @e[tag=!broly, tag=!orb,sort=nearest, limit=1] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if score @s dropEmerald matches 41..60 at @s anchored eyes facing entity @e[tag=!broly, tag=!orb,sort=nearest, limit=1] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if score @s dropEmerald matches 61..80 at @s anchored eyes facing entity @e[tag=!broly, tag=!orb,sort=nearest, limit=1] eyes positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
execute if score @s dropEmerald matches 81..140 at @s anchored eyes facing entity @e[tag=!broly, tag=!orb,sort=nearest, limit=1] eyes positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~
# HIT ENTITY DETECTION
execute at @s anchored eyes if entity @e[distance=..1,tag=!broly, sort=nearest] at @e[distance=..1, type=creeper] run particle minecraft:dust 0 1 0 2 ~ ~1.5 ~ 1 1 1 100 100 force
execute at @s anchored eyes if entity @e[distance=..1,tag=!broly, tag=!orb, sort=nearest] run effect give @e[limit=1,sort=nearest,tag=!broly, tag=!orb] minecraft:instant_damage 1 1 true
execute at @s anchored eyes if entity @e[distance=..1,tag=!broly, tag=!orb, sort=nearest] run effect give @e[limit=1,sort=nearest,tag=!broly, tag=!orb] minecraft:slowness 1 1 true
execute at @s anchored eyes if entity @e[tag=!broly, tag=!orb,distance=..1] run kill @s
execute at @s anchored eyes unless block ^ ^ ^ air run kill @s
# PARTICLE
execute at @s run particle minecraft:dust 0 1 0 1 ~ ~1.8 ~ 0.2 0.2 0.2 0.01 20 force
execute at @s run particle minecraft:dust 0 1 0.4 1 ~ ~1.8 ~ 0.2 0.2 0.2 0.01 20 force
# LIFETIME
execute run scoreboard players add @s dropEmerald 1
execute if score @s dropEmerald matches 140.. run kill @s