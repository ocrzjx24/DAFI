summon armor_stand ~ ~ ~ {Tags:["dafi.slay.stand2"],Invisible:1b,Small:1b}
tp @e[type=armor_stand,tag=dafi.slay.stand2] ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=dafi.slay.stand2] at @s run function dafi:internal/class/slay/circle2
kill @e[type=armor_stand,tag=dafi.slay.stand2]