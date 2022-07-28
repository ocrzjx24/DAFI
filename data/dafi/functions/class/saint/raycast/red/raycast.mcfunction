particle cloud ~ ~ ~ 0 0 0 0.01 1 force
particle snowflake ~ ~ ~ 0 0 0 0.01 1 force
execute as @a[distance=..3,team=!red] run effect give @s slow_falling 1 0 true
execute as @a[distance=..3,team=!red] run effect give @s levitation 1 0 true
scoreboard players set $strength delta.api.launch 20000
execute as @a[distance=..3,team=!red] at @s rotated as @a[tag=this,sort=nearest,limit=1] run function dafi:mechanics/bigpapi_delta/api/launch_looking
scoreboard players reset $strength delta.api.launch
execute if block ~ ~ ~ #dafi:partial run function dafi:mechanics/raycast/partial

scoreboard players remove .itt raycast 1

execute if score .itt raycast matches 1.. positioned ^ ^ ^1 run function dafi:class/saint/raycast/red/raycast

#execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!blue,tag=!this,dx=0] run function dafi:class/saint/raycast/blue/checkhitentity