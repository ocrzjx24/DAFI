summon armor_stand ~ ~ ~ {Tags:["slaystand"]}
tp @e[type=armor_stand,tag=slaystand] ~ ~ ~ 0 -90
execute as @e[type=armor_stand,tag=slaystand] at @s run function dafi:class/slay/sphere
kill @e[type=armor_stand,tag=slaystand]