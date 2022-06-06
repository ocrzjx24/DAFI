summon armor_stand ~ ~ ~ {Tags:["stingstand"]}
tp @e[type=armor_stand,tag=stingstand] ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=stingstand] at @s run function dafi:class/sting/circle
kill @e[type=armor_stand,tag=stingstand]