execute as @s[team=blue] unless score @s baneOfAllEvil matches 1..100 run effect give @a[team=!blue,distance=..3] instant_damage 1 0 true
execute as @s[team=red] unless score @s baneOfAllEvil matches 1..100 run effect give @a[team=!red,distance=..3] instant_damage 1 0 true
execute as @s[team=blue] if score @s baneOfAllEvil matches 1..100 run effect give @a[team=!blue,distance=..7] instant_damage 1 0 true
execute as @s[team=red] if score @s baneOfAllEvil matches 1..100 run effect give @a[team=!red,distance=..7] instant_damage 1 0 true
function dafi:class/siao/particle/particle1
execute unless score @s baneOfAllEvil matches 1..100 run particle minecraft:crit ~ ~0.2 ~ 1 0 1 0 50
execute if score @s baneOfAllEvil matches 1..100 run particle minecraft:dust 0.271 1 0.78 1 ~ ~0.2 ~ 3 0 3 0 50
execute if score @s baneOfAllEvil matches 1..100 run particle minecraft:dust 0.039 0.596 0.624 1 ~ ~0.2 ~ 3 0 3 0 50 

tag @s remove isPlunging