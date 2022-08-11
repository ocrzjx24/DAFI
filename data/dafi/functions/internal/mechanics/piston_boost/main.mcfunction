# effect give @a[tag=dafi.pistonboost] minecraft:levitation 1 45 true
# scoreboard players add @a[tag=dafi.pistonboost] dafi.pistonboost 1
# execute at @a[scores={dafi.pistonboost=2}] run playsound minecraft:block.piston.extend master @a[distance=..10] ~ ~ ~ 1 1.2
# effect clear @a[scores={dafi.pistonboost=3}] minecraft:levitation
# tag @a[scores={dafi.pistonboost=3..}] remove dafi.pistonboost
# scoreboard players reset @a[scores={dafi.pistonboost=3..}] dafi.pistonboost
execute as @a at @s unless score @s dafi.pistonboost matches 1.. if block ~ ~-0.3 ~ minecraft:piston run scoreboard players set @s dafi.pistonboost 1
execute as @a at @s if score @s dafi.pistonboost matches 1 if block ~ ~-0.3 ~ minecraft:piston run scoreboard players set @s delta.addition.magnitude 15000
execute as @a at @s if score @s dafi.pistonboost matches 1 if block ~ ~-0.3 ~ minecraft:piston rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion
execute as @a at @s if score @s dafi.pistonboost matches 1 if block ~ ~-0.3 ~ minecraft:piston run scoreboard players set @s delta.addition.magnitude 10000
execute as @a at @s if score @s dafi.pistonboost matches 1 if block ~ ~-0.3 ~ minecraft:piston rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
scoreboard players add @a[scores={dafi.pistonboost=1..}] dafi.pistonboost 1
scoreboard players reset @a[scores={dafi.pistonboost=3..}] dafi.pistonboost