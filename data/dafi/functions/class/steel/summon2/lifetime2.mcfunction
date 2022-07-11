#execute at @e[tag=wallCast,tag=w23] positioned ^ ^ ^ run function dafi:class/steel/particle/particle3
execute at @e[tag=wallCast] positioned ^ ^ ^ run function dafi:class/steel/particle/particle4
execute at @e[tag=wallCast,tag=blueWall] as @e[distance=..1,type=arrow,nbt={Color:16711680}] run data modify entity @s Motion set value 0
execute at @e[tag=wallCast,tag=redWall] as @e[distance=..1,type=arrow,nbt={Color:255}] run data modify entity @s Motion set value 0

# execute at @e[tag=wallCast,tag=blueWall] as @a[distance=..1,team=!blue] run effect give @s poison 5 100 true
# execute at @e[tag=wallCast,tag=redWall] as @a[distance=..1,team=!red] run effect give @s poison 5 100 true

execute as @e[tag=wallCast,tag=blueWall] at @s as @a[distance=..1,team=!blue] at @s run scoreboard players set $strength delta.api.launch 3000
execute as @e[tag=wallCast,tag=blueWall] at @s as @a[distance=..1,team=!blue] at @s rotated as @e[limit=1,tag=wallCast] run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @e[tag=wallCast,tag=blueWall] at @s as @a[distance=..1,team=!blue] at @s run scoreboard players reset $strength delta.api.launch

execute as @e[tag=wallCast,tag=redWall] at @s as @a[distance=..1,team=!red] at @s run scoreboard players set $strength delta.api.launch 3000
execute as @e[tag=wallCast,tag=redWall] at @s as @a[distance=..1,team=!red] at @s rotated as @e[limit=1,tag=wallCast] run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @e[tag=wallCast,tag=redWall] at @s as @a[distance=..1,team=!red] at @s run scoreboard players reset $strength delta.api.launch

execute as @e[tag=wallCast] at @s if block ^ ^ ^0.4 #dafi:air run tp @s ^ ^ ^0.4
execute as @e[tag=wallCast] at @s unless block ^ ^ ^0.4 #dafi:air run playsound entity.generic.swim master @a ~ ~ ~ 0.1 1
execute as @e[tag=wallCast] at @s unless block ^ ^ ^0.4 #dafi:air run particle block lime_concrete ~ ~ ~ 0 0 0 0 10 normal
execute as @e[tag=wallCast] at @s unless block ^ ^ ^0.4 #dafi:air run kill @s