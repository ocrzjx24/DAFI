tag @s add dafi.siege.this

# recoil 

# execute at @s anchored eyes run summon marker ^ ^ ^0.1 {Tags:["dafi.siege.reverse"]}
# execute as @e[type=marker,tag=dafi.siege.reverse] at @s facing entity @p[tag=dafi.siege.this] eyes run tp @s ~ ~ ~ facing entity @p[tag=dafi.siege.this] eyes
# scoreboard players set @s delta.addition.magnitude 6000
# execute if entity @s[scores={onGroundCheck=0}] at @s rotated as @e[type=marker,tag=dafi.siege.reverse,limit=1] run function dafi:mechanics/bigpapi_delta/addition/add_motion
# kill @e[type=marker,tag=dafi.siege.reverse]

# playsound/stopsound

execute at @s run stopsound @s * minecraft:item.crossbow.shoot

tag @s remove dafi.siege.this