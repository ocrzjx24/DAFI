execute store result entity @s Motion[0] double 0.001 run scoreboard players get @e[tag=dafi.arrow.original.temp,limit=1,sort=nearest] dafi.arrow.x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @e[tag=dafi.arrow.original.temp,limit=1,sort=nearest] dafi.arrow.y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @e[tag=dafi.arrow.original.temp,limit=1,sort=nearest] dafi.arrow.z

data modify entity @s Owner set from entity @a[tag=dafi.player.shooter,limit=1] UUID

scoreboard players set @s dafi.arrow.lifetime 30