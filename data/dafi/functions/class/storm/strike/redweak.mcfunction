effect give @a[team=blue,distance=..2.25] minecraft:instant_damage 1 1
effect give @a[team=blue,distance=2.25..4.5] minecraft:instant_damage 1 0

scoreboard players set @a[team=blue,distance=..4.5] slow 50

execute at @a[team=blue,distance=..4.5] run particle electric_spark ~ ~1.5 ~ 0 0 0 0.4 5 force
execute at @a[team=blue,distance=..4.5] run particle glow ~ ~1.5 ~ 0 0 0 0.4 5 force

execute at @s run function dafi:class/storm/strike/rocketjumpwaltz