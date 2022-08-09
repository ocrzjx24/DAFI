
scoreboard players add $output dafi.math 1
scoreboard players operation $increment dafi.math = $output dafi.math
scoreboard players operation $increment dafi.math *= $increment dafi.math

execute if score $increment dafi.math < $input dafi.math run function dafi:internal/mechanics/math/sqrt_wrapper