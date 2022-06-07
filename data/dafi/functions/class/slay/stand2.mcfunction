summon armor_stand ~ ~ ~ {Tags:["slaystand2"],Invisible:1b,Small:1b}
tp @e[type=armor_stand,tag=slaystand2] ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=slaystand2] at @s run function dafi:class/slay/circle2
kill @e[type=armor_stand,tag=slaystand2]