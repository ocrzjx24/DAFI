#execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] positioned ~0.4 ~0.4 ~0.4 at @s run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 3 force
#execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] positioned ~0.4 ~0.4 ~0.4 at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=1,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 at @s run playsound entity.generic.hurt master @a ~ ~ ~ 0.5 0.8
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=1,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run effect give @s blindness 1 0 true
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=1,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run scoreboard players set @s hp_dmg 2
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=1,tag=!dafi.shade.hit] positioned ~0.4 ~0.4 ~0.4 run tag @s add dafi.shade.hit