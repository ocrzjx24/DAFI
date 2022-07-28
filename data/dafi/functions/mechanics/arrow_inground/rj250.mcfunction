execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run summon marker ~ ~ ~ {Tags:["dafi.math.helper"]}
execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] as @a[distance=..7.5] run function dafi:mechanics/arrow_inground/get_launch
execute if score #weapon weapon matches 1 at @e[type=marker,tag=dafi.math.helper] as @a[distance=..7.5] at @e[type=marker,tag=dafi.math.helper] facing entity @s feet run function dafi:mechanics/bigpapi_delta/addition/add_motion
execute if score #weapon weapon matches 1 run kill @e[tag=dafi.math.helper]

# execute at @e[tag=dafi.math.helper,limit=1] as @a[distance=..7.5] run function dafi:class/storm/strike/get_launch
# execute at @e[type=marker,tag=dafi.math.helper] as @a[distance=..7.5] at @e[type=marker,tag=dafi.math.helper] facing entity @s feet run function dafi:mechanics/bigpapi_delta/addition/add_motion