summon marker ~ ~-0.1 ~ {Tags:["dafi.arrow.helper"]}
execute at @e[tag=dafi.arrow.helper] as @a[distance=..7.5] run function dafi:internal/mechanics/arrow/rocketjump/get_launch
execute at @e[tag=dafi.arrow.helper] as @a[distance=..7.5] at @e[tag=dafi.arrow.helper] facing entity @s feet run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
kill @e[tag=dafi.arrow.helper]