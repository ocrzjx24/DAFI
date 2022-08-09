## dafi:internal/class/saint/raycast/red/raycast
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/raycast/red/fire
# > dafi:internal/class/saint/raycast/red/raycast

particle cloud ~ ~ ~ 0 0 0 0.01 1 force
particle snowflake ~ ~ ~ 0 0 0 0.01 1 force
execute as @a[distance=..3,team=!red] run effect give @s slow_falling 1 0 true
execute as @a[distance=..3,team=!red] run effect give @s levitation 1 0 true
scoreboard players set @a[distance=..3,team=!red] delta.addition.magnitude 20000
execute as @a[distance=..3,team=!red] at @s rotated as @a[tag=dafi.saint.this,sort=nearest,limit=1] run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches 1.. positioned ^ ^ ^1 run function dafi:internal/class/saint/raycast/red/raycast

#execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!this,dx=0] run function dafi:class/saint/raycast/red/checkhitentity