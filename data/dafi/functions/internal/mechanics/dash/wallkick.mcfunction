scoreboard players set @s dafi.dash.time 0
tag @s add dafi.dash.primed
execute at @s run playsound minecraft:block.ancient_debris.break master @s ~ ~1000 ~ 1000 1.5
execute at @s run playsound minecraft:block.sand.place master @s ~ ~1000 ~ 1000 1

clear @s elytra

#execute at @s run playsound minecraft:block.piston.extend master @s ~ ~1000 ~ 300 1.5
scoreboard players set @s dafi.dash.CD -2
#execute if score #universal dafi.slide.stamina matches 2 run scoreboard players set @s[gamemode=!creative] dafi.slide.stamina.recoveryTime 10
#execute if score #universal dafi.slide.stamina matches 2 run scoreboard players remove @s[gamemode=!creative] dafi.slide.stamina 20

#> Double Jump
tp @s @s
execute as @s[predicate=!dafi:is_sneaking] at @s rotated ~ -90 positioned ~ ~1 ~ run function dafi:internal/mechanics/dash/particle1
execute as @s[predicate=!dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 4200
execute as @s[predicate=!dafi:is_sneaking] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute as @s[predicate=!dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 6800
execute as @s[predicate=!dafi:is_sneaking] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion

#> Air Dash

execute as @s[predicate=dafi:is_sneaking] at @s rotated ~ 0 positioned ~ ~1 ~ run function dafi:internal/mechanics/dash/particle1
execute as @s[predicate=dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 8600
execute as @s[predicate=dafi:is_sneaking] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute as @s[predicate=dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 2400
execute as @s[predicate=dafi:is_sneaking] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion

tag @s add dafi.dash.elytraProcessed