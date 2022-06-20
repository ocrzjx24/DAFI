execute if score @s c4Life matches 1 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if score @s c4Life matches 21 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if score @s c4Life matches 40 run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3}
execute if score @s c4Life matches 40 run kill @s
scoreboard players add @s c4Life 1
