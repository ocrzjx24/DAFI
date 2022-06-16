execute if score #gravity gravity matches 0 run tag @e[type=arrow] add noGravity
execute as @e[tag=noGravity,tag=!processedArrow,type=arrow] run function dafi:mechanics/no_gravity/nogravity
execute as @e[tag=processedArrow] run function dafi:mechanics/no_gravity/lifetime