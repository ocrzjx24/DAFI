summon armor_stand ~ ~ ~ {Tags:["stingstand2"]}
tp @e[type=armor_stand,tag=stingstand2] ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=stingstand2] at @s run function dafi:class/sting/circle2
kill @e[type=armor_stand,tag=stingstand2]