execute store result entity @s Motion[0] double 0.0012 run scoreboard players get @e[tag=dafi.arrow.processing,limit=1,sort=nearest] dafi.arrow.x
execute store result entity @s Motion[1] double 0.0012 run scoreboard players get @e[tag=dafi.arrow.processing,limit=1,sort=nearest] dafi.arrow.y
execute store result entity @s Motion[2] double 0.0012 run scoreboard players get @e[tag=dafi.arrow.processing,limit=1,sort=nearest] dafi.arrow.z


data modify entity @s Owner set from entity @a[tag=dafi.player.shooter,limit=1] UUID

execute if entity @a[tag=dafi.player.shooter,team=blue,limit=1] run tag @s add dafi.arrow.blue
execute if entity @a[tag=dafi.player.shooter,team=red,limit=1] run tag @s add dafi.arrow.red
execute if entity @a[tag=dafi.player.shooter,team=ffa,limit=1] run tag @s add dafi.arrow.ffa

scoreboard players set @s dafi.arrow.lifetime 54

data modify entity @s crit set value 1
data modify entity @s pickup set value 0
data modify entity @s damage set value 5