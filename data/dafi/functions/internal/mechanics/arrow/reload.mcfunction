execute unless score @s dafi.siege.mode matches 1 run scoreboard players set @s dafi.arrow.CD 1
particle minecraft:lava ~ ~-0.5 ~ 0.5 0.5 0.5 0.0001 2
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~100000000 ~ 100000000 2 1
#playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.25
#playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~100000000 ~ 100000000 0.7 1
advancement revoke @s only dafi:shotcrossbow
function dafi:internal/mechanics/arrow/shot
execute if entity @s[tag=dafi.siege,scores={dafi.siege.mode=1}] run function dafi:internal/class/siege/minigunshot
execute if entity @s[tag=dafi.sting,scores={dafi.sting.mode=1}] run function dafi:internal/class/sting/gl_shot
# execute if entity @s[tag=siege,scores={siegeMode=2}] run function dafi:class/siege/gatling_shot