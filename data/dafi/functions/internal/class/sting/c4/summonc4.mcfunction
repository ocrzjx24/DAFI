# scoreboard players set @s dafi.sting.c4CD 1 

# execute if entity @s[team=red] run summon magma_cube ~ ~1 ~ {Item:{id:"minecraft:torch",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["C4"],CustomName:'{"text":"C4","color":"red"}',CustomNameVisible:1b,Team:"red"}
# execute if entity @s[team=blue] run summon magma_cube ~ ~1 ~ {Item:{id:"minecraft:torch",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["C4"],CustomName:'{"text":"C4","color":"red"}',CustomNameVisible:1b,Team:"blue"}

# tp @e[type=magma_cube,tag=C4,sort=nearest,limit=1] ~ ~ ~ ~ ~