##> delta:internal/math/xyz_to_polar
#   Takes xyz coordinates, returns a looking direction and magnitude

#Move entity to end of vector
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get $x delta.api.launch
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get $y delta.api.launch
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get $z delta.api.launch

#Get looking direction
execute facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute rotated as @s run tp @s ^ ^ ^1

#Get unit vector
execute store result score $unit.x delta.internal.math run data get entity @s Pos[0] 1000
execute store result score $unit.y delta.internal.math run data get entity @s Pos[1] 1000
execute store result score $unit.z delta.internal.math run data get entity @s Pos[2] 1000

#Use absolute value
execute if score $unit.x delta.internal.math matches ..-1 run scoreboard players operation $unit.x delta.internal.math *= #constant.-1 delta.internal.math
execute if score $unit.y delta.internal.math matches ..-1 run scoreboard players operation $unit.y delta.internal.math *= #constant.-1 delta.internal.math
execute if score $unit.z delta.internal.math matches ..-1 run scoreboard players operation $unit.z delta.internal.math *= #constant.-1 delta.internal.math

scoreboard players operation $abs_x delta.internal.math = $x delta.api.launch
scoreboard players operation $abs_y delta.internal.math = $y delta.api.launch
scoreboard players operation $abs_z delta.internal.math = $z delta.api.launch

execute if score $abs_x delta.internal.math matches ..-1 run scoreboard players operation $abs_x delta.internal.math *= #constant.-1 delta.internal.math
execute if score $abs_y delta.internal.math matches ..-1 run scoreboard players operation $abs_y delta.internal.math *= #constant.-1 delta.internal.math
execute if score $abs_z delta.internal.math matches ..-1 run scoreboard players operation $abs_z delta.internal.math *= #constant.-1 delta.internal.math


#Set strength to the highest component of the vector / the highest component of the unit vector
scoreboard players operation $strength delta.api.launch = $abs_x delta.internal.math
scoreboard players operation $strength delta.api.launch > $abs_y delta.internal.math
scoreboard players operation $strength delta.api.launch > $abs_z delta.internal.math
scoreboard players operation $strength delta.api.launch *= #constant.1000 delta.internal.math

scoreboard players operation $unit.x delta.internal.math > $unit.y delta.internal.math
scoreboard players operation $unit.x delta.internal.math > $unit.z delta.internal.math

scoreboard players operation $strength delta.api.launch /= $unit.x delta.internal.math