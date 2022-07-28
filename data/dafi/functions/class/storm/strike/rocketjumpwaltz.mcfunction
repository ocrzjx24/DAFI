execute at @s run summon marker ~ ~ ~ {Tags:["dafi.math.helper"]}
# execute at @s run scoreboard players set @a[distance=..5,predicate=dafi:is_sneaking] delta.addition.magnitude 15000
# execute at @s run scoreboard players set @a[distance=..5,predicate=dafi:is_not_sneaking] delta.addition.magnitude 9000
# execute at @s as @a[distance=..5] run function dafi:mechanics/math/get_distance
# execute at @s run scoreboard players set @a[distance=..7.5] delta.addition.magnitude 15000
execute at @e[tag=dafi.math.helper,limit=1] as @a[distance=..7.5] run function dafi:class/storm/strike/get_launch
execute at @e[type=marker,tag=dafi.math.helper] as @a[distance=..7.5] at @e[type=marker,tag=dafi.math.helper] facing entity @s feet run function dafi:mechanics/bigpapi_delta/addition/add_motion
kill @e[tag=dafi.math.helper]