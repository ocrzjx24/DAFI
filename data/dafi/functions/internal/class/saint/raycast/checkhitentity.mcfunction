execute positioned ~-0.4 ~-0.4 ~-0.4 as @s[dx=0,tag=!dafi.saint.hit] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] at @s run playsound block.beacon.power_select master @a ~ ~ ~ 1 2
execute positioned ~-0.4 ~-0.4 ~-0.4 as @s[dx=0,tag=!dafi.saint.hit] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run scoreboard players set @s delta.addition.magnitude 10000
execute positioned ~-0.4 ~-0.4 ~-0.4 as @s[dx=0,tag=!dafi.saint.hit] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] at @s rotated as @a[tag=dafi.saint.summon.this,sort=nearest,limit=1] run function dafi:interna/mechanics/addition/add_motion
execute as @e[distance=..3,tag=!dafi.saint.hit,tag=dafi.saint.vortex] run scoreboard players set @s dafi.saint.vortex.lifetime 200
execute positioned ~-0.4 ~-0.4 ~-0.4 as @s[dx=0,tag=!dafi.saint.hit] positioned ~-0.2 ~-0.2 ~-0.2 if entity @s[dx=0] run tag @s add dafi.saint.hit
