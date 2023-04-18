function dafi:internal/mechanics/math/get_distance

scoreboard players operation $output dafi.mechanics.math -= #constant.7500 dafi.mechanics.math
scoreboard players operation $output dafi.mechanics.math *= #constant.-1 dafi.mechanics.math
# scoreboard players operation $output dafi.math *= #constant.5 dafi.math
# execute store result score @s delta.addition.magnitude run scoreboard players operation $output dafi.math /= #constant.2 dafi.math
execute store result score @s delta.addition.magnitude run scoreboard players operation $output dafi.mechanics.math *= #constant.2 dafi.mechanics.math