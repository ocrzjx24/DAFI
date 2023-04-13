tag @s add dafi.saint.this

execute if entity @s[team=blue] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.saint.vortex","dafi.saint.blueVortex","dafi.saint.init"]}
execute if entity @s[team=red] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.saint.vortex","dafi.saint.redVortex","dafi.saint.init"]}
execute if entity @s[team=ffa] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.saint.vortex","dafi.saint.ffaVortex","dafi.saint.init"]}
execute at @s run summon marker ~ ~ ~ {Tags:["dafi.saint.vortex","dafi.saint.spin","dafi.saint.init"]}


scoreboard players add .global dafi.sbsid 1
scoreboard players operation @e[type=marker,tag=dafi.saint.init] dafi.sbsid = .global dafi.sbsid
scoreboard players operation @p[tag=dafi.saint.this] dafi.sbsid = .global dafi.sbsid

tag @e remove dafi.saint.this

execute at @s anchored eyes positioned ^ ^ ^ run tp @e[type=marker,tag=dafi.saint.init,tag=!dafi.saint.spin] @s
tp @e[type=marker,tag=dafi.saint.init,tag=!dafi.saint.spin] ~ ~1 ~
tag @e[tag=dafi.saint.init] remove dafi.saint.init