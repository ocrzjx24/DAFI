execute if score @s[tag=garden] shovel matches ..4 run advancement revoke @s only dafi:fall
execute if score @s[tag=garden] shovel matches 5.. at @s run function dafi:class/storm/particle/particle4
execute if score @s[tag=garden] shovel matches 5.. at @s run particle minecraft:dust 0.1 1 0.9 3 ~ ~ ~ 2 0 2 1 300 force
execute if score @s[tag=garden] shovel matches 5.. at @s[] run effect give @e[distance=..4.5,tag=!garden] instant_damage 1 1
execute if score @s[tag=garden] shovel matches 5.. at @s[] run scoreboard players add @a[distance=..4.5,tag=!garden] slow 50


execute if score @s[tag=garden] shovel matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute if score @s[tag=garden] shovel matches 5.. at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1.9

# execute if score @s[tag=garden] shovel matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
# execute if score @s[tag=garden] shovel matches 5.. at @s run summon creeper ^ ^ ^-1 {Fuse:0,ExplosionRadius:-3}
execute if score @s[tag=garden] shovel matches 5.. run scoreboard players set @s shovel 119