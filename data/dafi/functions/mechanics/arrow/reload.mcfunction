execute unless score @s siegeMode matches 1 run scoreboard players set @s arrowCD 1
particle minecraft:lava ~ ~-0.5 ~ 0.5 0.5 0.5 0.0001 2
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~100000000 ~ 100000000 2 1
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.25
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~100000000 ~ 100000000 0.7 1
advancement revoke @s only dafi:shotcrossbow
execute if entity @s[tag=siege,scores={siegeMode=1}] run function dafi:class/siege/shotgun_shot
# execute if entity @s[tag=siege,scores={siegeMode=2}] run function dafi:class/siege/gatling_shot