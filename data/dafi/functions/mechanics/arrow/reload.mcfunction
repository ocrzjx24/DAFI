scoreboard players set @s arrowCD 1
particle minecraft:lava ~ ~-0.5 ~ 0.5 0.5 0.5 0.0001 5
playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1 2
#playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.large_blast master @s ~ ~ ~ 1 0.7
advancement revoke @s only dafi:shotcrossbow