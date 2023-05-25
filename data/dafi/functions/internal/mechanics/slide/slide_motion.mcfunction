execute store result score @s dafi.slide.motion_x run data get entity @s Motion[0] 1000
execute store result score @s dafi.slide.motion_z run data get entity @s Motion[2] 1000
    scoreboard players operation $foo dafi.math = @s dafi.slide.motion_x
    scoreboard players operation $foo dafi.math *= $foo dafi.math
    scoreboard players operation $goo dafi.math = @s dafi.slide.motion_z
    scoreboard players operation $goo dafi.math *= $goo dafi.math
    scoreboard players operation $input dafi.math = $foo dafi.math
    scoreboard players operation $input dafi.math += $goo dafi.math
function dafi:internal/mechanics/math/sqrt
scoreboard players operation @s delta.addition.magnitude = @s dafi.slide.motion_x
    scoreboard players operation @s delta.addition.magnitude *= $slide_motion_constant dafi.slide.stamina
    scoreboard players operation @s delta.addition.magnitude /= $output dafi.math
execute rotated 90 0 run function dafi:internal/mechanics/addition/add_motion
scoreboard players operation @s delta.addition.magnitude = @s dafi.slide.motion_z
    scoreboard players operation @s delta.addition.magnitude *= $slide_motion_constant dafi.slide.stamina
    scoreboard players operation @s delta.addition.magnitude /= $output dafi.math
execute rotated 0 0 run function dafi:internal/mechanics/addition/add_motion