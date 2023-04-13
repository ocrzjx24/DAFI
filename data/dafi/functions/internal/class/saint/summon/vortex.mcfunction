

execute unless score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. if block ^ ^ ^0.75 #dafi:air run tp @s ^ ^ ^0.75
execute unless score @s[tag=!dafi.saint.vortex.active,tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. unless block ^ ^ ^0.75 #dafi:air run scoreboard players set @s dafi.saint.vortex.lifetime 100
execute if score @s[tag=!dafi.saint.vortex.active,tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. run tag @s add dafi.saint.vortex.active
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100 run scoreboard players operation .temp dafi.sbsid = @s dafi.sbsid
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100 as @a[tag=dafi.saint] if score @s dafi.sbsid = .temp dafi.sbsid run scoreboard players set @s dafi.saint.swap.cooldown 2
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. run particle minecraft:nautilus ~ ~1 ~ 0 0 0 2 10

execute at @s[type=marker,tag=!dafi.saint.spin] positioned ~ ~0.5 ~ as @e[type=marker,tag=dafi.saint.spin] if score @s dafi.sbsid = .temp dafi.sbsid rotated as @s run tp @s ~ ~ ~ ~-6 ~
execute at @e[type=marker,tag=dafi.saint.spin] run function dafi:internal/class/soul/swap/particle1

particle dust 1 1 1 10 ~ ~ ~ 0 0 0 0 1 


execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. if entity @s[tag=dafi.saint.blueVortex] run scoreboard players set @a[team=!blue,distance=..10] delta.addition.magnitude 400
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. if entity @s[tag=dafi.saint.redVortex] run scoreboard players set @a[team=!red,distance=..10] delta.addition.magnitude 400
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. if entity @s[tag=dafi.saint.blueVortex] as @a[team=!blue,distance=..10] at @s facing entity @e[type=minecraft:marker,tag=dafi.saint.vortex,limit=1,sort=nearest,distance=..12] feet run function dafi:internal/mechanics/addition/add_motion
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 100.. if entity @s[tag=dafi.saint.redVortex] as @a[team=!red,distance=..10] at @s facing entity @e[type=minecraft:marker,tag=dafi.saint.vortex,limit=1,sort=nearest,distance=..12] feet run function dafi:internal/mechanics/addition/add_motion

execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 160.. at @s run effect give @a[distance=..7] levitation 1 9 true
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 160.. at @s run scoreboard players set @a[distance=..7] delta.addition.magnitude 9000
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 160.. at @s as @a[distance=..7] rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
execute if score @s[tag=!dafi.saint.spin] dafi.saint.vortex.lifetime matches 160.. run particle flash
execute if score @s[] dafi.saint.vortex.lifetime matches 160.. run kill @s
#execute if entity @s[tag=dafi.saint.ffaVortex] run scoreboard players set @a delta.addition.magnitude 500