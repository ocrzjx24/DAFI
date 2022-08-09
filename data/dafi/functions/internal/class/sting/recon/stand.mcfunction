summon armor_stand ~ ~ ~ {Tags:["dafi.sting.stand"]}
tp @e[type=armor_stand,tag=dafi.sting.stand] ~ ~ ~ 0 -90
execute as @e[type=armor_stand,tag=dafi.sting.stand] at @s run function dafi:internal/class/sting/recon/sphere
kill @e[type=armor_stand,tag=dafi.sting.stand]