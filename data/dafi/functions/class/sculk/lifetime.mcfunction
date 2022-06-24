#execute if score @s wardenLife matches 1 run function dafi:class/sculk/applymotion
data modify entity @s[team=red,tag=!wardenProcessed] anger.suspects set from entity @e[team=!red,limit=1,sort=nearest] UUID
data modify entity @s[team=blue,tag=!wardenProcessed] anger.suspects set from entity @e[team=!blue,limit=1,sort=nearest] UUID
data modify entity @s[team=red,tag=!wardenProcessed] anger set value 150
data modify entity @s[team=blue,tag=!wardenProcessed] anger set value 150
tag @e[tag=!wardenProcessed] add wardenProcessed
scoreboard players add @s wardenLife 1
execute if score @s wardenLife matches 480.. run kill @s

