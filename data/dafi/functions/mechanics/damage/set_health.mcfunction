scoreboard players operation .save sethealth = @s sethealth
scoreboard players operation .save damage = @s damage
execute store result score @s health run data get entity @s Health
execute store result score @s maxhealth run attribute @s minecraft:generic.max_health get
execute if score @s sethealth >= @s maxhealth run effect give @s instant_health 1 200 true
execute unless score @s sethealth >= @s maxhealth run scoreboard players operation @s health -= @s sethealth
execute unless score @s sethealth >= @s maxhealth run scoreboard players operation @s damage = @s health
scoreboard players operation @s sethealth = .save sethealth
execute unless score @s sethealth >= @s maxhealth run function dafi:mechanics/damage/deal_damage
scoreboard players operation @s damage = .save damage