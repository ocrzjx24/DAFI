# say bam boom
tag @s add dafi.siege.this
execute at @s anchored eyes run summon marker ^ ^ ^0.1 {Tags:["dafi.siege.reverse"]}
execute as @e[type=marker,tag=dafi.siege.reverse] at @s facing entity @a[tag=dafi.siege.this,limit=1] eyes run tp @s ~ ~ ~ facing entity @a[tag=dafi.siege.this,limit=1] eyes
scoreboard players set $strength delta.api.launch 6000
execute if entity @s[scores={onGroundCheck=0}] at @s rotated as @e[type=marker,tag=dafi.siege.reverse,limit=1] run function dafi:mechanics/bigpapi_delta/api/launch_looking
scoreboard players reset $strength delta.api.launch
kill @e[type=marker,tag=dafi.siege.reverse]
tag @s remove dafi.siege.this