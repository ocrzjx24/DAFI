#execute at @e[tag=wallCast,tag=w23] positioned ^ ^ ^ run function dafi:class/steel/particle/particle3
execute at @e[tag=wallCast] positioned ^ ^ ^ run function dafi:class/steel/particle/particle4
execute at @e[tag=wallCast,tag=blueWall] as @e[distance=..1,type=arrow,nbt={Color:16711680}] run data modify entity @s Motion set value 0
execute at @e[tag=wallCast,tag=redWall] as @e[distance=..1,type=arrow,nbt={Color:255}] run data modify entity @s Motion set value 0

execute as @e[tag=wallCast] at @s run tp @s ^ ^ ^0.1