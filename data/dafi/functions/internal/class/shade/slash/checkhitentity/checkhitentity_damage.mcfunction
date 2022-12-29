execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit.damage] if score @s dafi.shade.marked.stackCount matches 1.. positioned ~0.5 ~0.5 ~0.5 at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 0.3 2
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit.damage] positioned ~0.5 ~0.5 ~0.5 run scoreboard players operation @s hp_dmg = @s dafi.shade.marked.stackCount
execute positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0,tag=!dafi.shade.hit.damage] positioned ~0.5 ~0.5 ~0.5 run tag @s add dafi.shade.hit.damage
