##> dafi:internal/class/sculk/lifetime
# lifetime for wardens
#
# callers:
# > dafi:internal/class/main

#execute if score @s dafi.sculk.wardenLife matches 1 run function dafi:class/sculk/applymotion
data modify entity @s[team=red,tag=!dafi.sculk.wardenProcessed] anger.suspects set from entity @e[team=!red,limit=1,sort=nearest] UUID
data modify entity @s[team=blue,tag=!dafi.sculk.wardenProcessed] anger.suspects set from entity @e[team=!blue,limit=1,sort=nearest] UUID
data modify entity @s[team=red,tag=!dafi.sculk.wardenProcessed] anger set value 150
data modify entity @s[team=blue,tag=!dafi.sculk.wardenProcessed] anger set value 150
tag @e[tag=!dafi.sculk.wardenProcessed] add dafi.sculk.wardenProcessed
scoreboard players add @s dafi.sculk.wardenLife 1
execute if score @s dafi.sculk.wardenLife matches 480.. run kill @s

