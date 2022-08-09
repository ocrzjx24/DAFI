##
summon marker ~ ~ ~ {Tags:["dafi.math.helper"]}

scoreboard players reset $input dafi.math

execute store result score $foo dafi.math run data get entity @s Pos[0] 1000
execute store result score $goo dafi.math run data get entity @e[tag=dafi.math.helper,limit=1] Pos[0] 1000
scoreboard players operation $foo dafi.math -= $goo dafi.math
scoreboard players operation $foo dafi.math *= $foo dafi.math
scoreboard players operation $input dafi.math += $foo dafi.math

execute store result score $foo dafi.math run data get entity @s Pos[1] 1000
execute store result score $goo dafi.math run data get entity @e[tag=dafi.math.helper,limit=1] Pos[1] 1000
scoreboard players operation $foo dafi.math -= $goo dafi.math
scoreboard players operation $foo dafi.math *= $foo dafi.math
scoreboard players operation $input dafi.math += $foo dafi.math

execute store result score $foo dafi.math run data get entity @s Pos[2] 1000
execute store result score $goo dafi.math run data get entity @e[tag=dafi.math.helper,limit=1] Pos[2] 1000
scoreboard players operation $foo dafi.math -= $goo dafi.math
scoreboard players operation $foo dafi.math *= $foo dafi.math
scoreboard players operation $input dafi.math += $foo dafi.math

function dafi:internal/mechanics/math/sqrt

kill @e[tag=dafi.math.helper]