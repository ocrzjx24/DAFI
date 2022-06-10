execute if score @s[tag=garden] shovel matches ..4 run advancement revoke @s only dafi:fall
execute if score @s[tag=garden] shovel matches 5.. at @s run particle minecraft:dust 0.2 1 1 3 ~ ~-0.1 ~ 1 1 1 1 40 force
# execute if score @s[tag=garden] shovel matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
# execute if score @s[tag=garden] shovel matches 5.. at @s run summon creeper ^ ^ ^-1 {Fuse:0,ExplosionRadius:-3}
execute if score @s[tag=garden] shovel matches 5.. run scoreboard players set @s shovel 119