scoreboard players set @s dafi.dash.time 0
tag @s add dafi.dash.primed
execute at @s run playsound minecraft:entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1.5
tp @s @s
#> Double Jump
execute as @s[predicate=!dafi:is_sneaking] at @s rotated ~ -90 positioned ~ ~1 ~ run function dafi:internal/mechanics/dash/particle1
execute as @s[predicate=!dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 6000
execute as @s[predicate=!dafi:is_sneaking] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute as @s[predicate=!dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 7200
execute as @s[predicate=!dafi:is_sneaking] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion

#> Air Dash

execute as @s[predicate=dafi:is_sneaking] at @s rotated ~ 0 positioned ~ ~1 ~ run function dafi:internal/mechanics/dash/particle1
execute as @s[predicate=dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 12000
execute as @s[predicate=dafi:is_sneaking] at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute as @s[predicate=dafi:is_sneaking] run scoreboard players set @s delta.addition.magnitude 2400
execute as @s[predicate=dafi:is_sneaking] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion

clear @s elytra
tag @s add dafi.dash.elytraProcessed