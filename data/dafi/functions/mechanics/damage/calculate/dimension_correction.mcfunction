execute at @s run playsound entity.player.hurt master @a[distance=..10] ~ ~ ~ 1 1 0
execute store result score @s health run data get entity @s Health
execute store result score @s maxhealth run attribute @s minecraft:generic.max_health get
scoreboard players operation @s exitrun = @s health
scoreboard players operation @s exitrun -= @s damage
execute if score @s exitrun >= @s maxhealth run effect give @s instant_health 1 250 true
execute if score @s health <= @s damage run kill @s
execute unless score @s health <= @s damage unless score @s exitrun >= @s maxhealth run function dafi:mechanics/damage/calculate/load