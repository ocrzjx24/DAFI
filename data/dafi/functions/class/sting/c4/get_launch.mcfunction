function dafi:mechanics/math/get_distance

scoreboard players operation $output dafi.math -= #constant.7500 dafi.math
scoreboard players operation $output dafi.math *= #constant.-1 dafi.math
# scoreboard players operation $output dafi.math *= #constant.5 dafi.math
# execute store result score @s delta.addition.magnitude run scoreboard players operation $output dafi.math /= #constant.2 dafi.math
execute store result score @s delta.addition.magnitude run scoreboard players operation $output dafi.math *= #constant.2 dafi.math