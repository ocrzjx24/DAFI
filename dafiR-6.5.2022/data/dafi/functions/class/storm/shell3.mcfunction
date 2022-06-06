playsound minecraft:entity.lightning_bolt.impact voice @a ~ ~ ~ 20 1
particle minecraft:dust 0.1 0.9 1 5 ~ ~ ~ 5.5 0 5.5 1 500 force
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute at @s[team=red] run effect give @e[team=!red,distance=..9] minecraft:instant_damage 1 0 true
execute at @s[team=red] run effect give @e[team=!red,distance=6..9] minecraft:slowness 1 4 true
execute at @s[team=blue] run effect give @e[team=!blue,distance=..9] minecraft:instant_damage 1 0 true
execute at @s[team=blue] run effect give @e[team=!blue,distance=6..9] minecraft:slowness 1 4 true