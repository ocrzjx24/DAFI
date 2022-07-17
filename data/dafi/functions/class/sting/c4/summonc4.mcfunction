scoreboard players set @s c4CD 1 
summon magma_cube ~ ~1 ~ {Item:{id:"minecraft:torch",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["C4"],CustomName:'{"text":"C4","color":"red"}',CustomNameVisible:1b}
tp @e[type=magma_cube,tag=C4,sort=nearest,limit=1] ~ ~ ~ ~ ~