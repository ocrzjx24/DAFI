## cast hit player
# headshot particles
# execute positioned ~ ~-2.2 ~ if entity @s[distance=..1.05] run particle crit ~ ~1.6 ~ 0 0 0 1 4 force
# distance falloff
# execute if score #distance instaray matches ..50 run effect give @s instant_damage 1 1 true
# execute if score #distance instaray matches 51.. run effect give @s instant_damage 1 0 true
# tp @s ^ ^ ^-1
# effect give @s instant_damage 1 0 true
scoreboard players set #hit raycast 1
scoreboard players add @s hitcount 1
# execute positioned ~ ~-2.2 ~ if entity @s[distance=..1.05] run effect give @s instant_damage 1 2 true
# effect give @s instant_damage 1 2 true
# execute if score @s wallbang matches 11.. run effect give @s instant_damage 1 0 true
