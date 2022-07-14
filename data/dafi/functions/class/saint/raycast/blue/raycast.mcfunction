particle cloud ~ ~ ~ 0 0 0 0.01 1 force
particle snowflake ~ ~ ~ 0 0 0 0.01 1 force
execute as @e[distance=..5,team=!blue] at @s run scoreboard players set $strength delta.api.launch 3000
execute as @e[distance=..5,team=!blue] at @s rotated as @e[limit=1,scores={dropFeather=1}] run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute as @e[distance=..5,team=!blue] at @s run scoreboard players reset $strength delta.api.launch
execute as @e[distance=..5,team=!blue] run effect give @s slow_falling 3 0 true
execute if block ~ ~ ~ #dafi:partial run function dafi:mechanics/raycast/partial

scoreboard players remove .itt raycast 1

execute if score .itt raycast matches 1.. positioned ^ ^ ^1 run function dafi:class/saint/raycast/blue/raycast

#execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!blue,tag=!this,dx=0] run function dafi:class/saint/raycast/blue/checkhitentity