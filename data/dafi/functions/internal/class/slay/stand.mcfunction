summon armor_stand ~ ~ ~ {Tags:["dafi.slay.stand"]}
tp @e[type=armor_stand,tag=dafi.slay.stand] ~ ~ ~ 0 -90
execute as @e[type=armor_stand,tag=dafi.slay.stand] at @s run function dafi:internal/class/slay/sphere
kill @e[type=armor_stand,tag=dafi.slay.stand]