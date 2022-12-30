execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 0.3 2
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run effect give @s blindness 1 0 true
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run scoreboard players set @s hp_dmg 10
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run tag @s add dafi.shade.hit
