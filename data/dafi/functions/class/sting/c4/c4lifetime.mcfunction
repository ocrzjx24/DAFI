scoreboard players add @s c4Life 1

execute if score @s c4Life matches 1 at @s run function dafi:class/sting/c4/applymotion

execute if score @s c4Life matches 1 run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.8 1.6
execute if score @s c4Life matches 2 run data modify entity @s anger set value 1
# execute if score @s c4Life matches 2 run data modify entity @s CustomName set value '{"text":"C4","color":"red"}'
execute if score @s c4Life matches 21 run data modify entity @s CustomName set value '{"text":"C4","color":"green"}'
execute if score @s c4Life matches 21 run data modify entity @s Item set value {id:"minecraft:redstone_torch",Count:1b}
# execute if data entity @s OnGround if score @s c4Life matches 5.. run data modify entity @s CustomName set value '{"text":"C4","color":"green"}'
execute if score @s c4Life matches 21 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if score @s c4Life matches 21..1200 run particle dust 1 0 0 1 ~ ~0.5 ~ 0.05 0.1 0.05 0.1 1 force
## IM GOING TO KILLYMSELF
# execute if score @s c4Life matches 21..200 run particle firework ~1 ~0.25 ~ 0.05 0.1 0.05 0.1 1 force
# execute if score @s c4Life matches 21..200 run particle firework ~-1 ~0.25 ~ 0.05 0.1 0.05 0.1 1 force
# execute if score @s c4Life matches 21..200 run particle firework ~0.5 ~0.25 ~0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s c4Life matches 21..200 run particle firework ~0.5 ~0.25 ~-0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s c4Life matches 21..200 run particle firework ~-0.5 ~0.25 ~0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s c4Life matches 21..200 run particle firework ~-0.5 ~0.25 ~-0.8 0.05 0.1 0.05 0.1 1 force

# execute if score @s c4Life matches 41 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if score @s c4Life matches 21..240 if entity @e[distance=..1.5,limit=1,type=player] run scoreboard players set @s c4Life 241
# execute if score @s c4Life matches 21..200 if entity @e[distance=..2,limit=1,type=player] run kill @s
execute if score @s c4Life matches 240 run kill @s

execute if score @s c4Life matches 241..248 run particle smoke ~ ~0.5 ~ 0.1 0.2 0.1 0.2 5 force
execute if score @s c4Life matches 248 run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-2}
execute if score @s c4Life matches 248.. run kill @s