## dafi:internal/class/saint/raycast/ffa/raycast
# starts the saint raycast (if the player is on the ffa team)
#
# callers:
# > dafi:internal/class/saint/raycast/ffa/fire
# > dafi:internal/class/saint/raycast/ffa/raycast

scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid

particle cloud ~ ~ ~ 0 0 0 0.01 1 force
particle snowflake ~ ~ ~ 0 0 0 0.01 1 force
execute as @a[distance=..3,tag=!dafi.saint.this] run effect give @s slow_falling 1 0 true
execute as @a[distance=..3,tag=!dafi.saint.this] run effect give @s levitation 1 0 true
execute as @a[distance=..3,tag=!dafi.saint.this] run scoreboard players set @s delta.addition.magnitude 10000
execute as @a[distance=..3,tag=!dafi.saint.this] at @s rotated as @a[tag=dafi.saint.this,sort=nearest,limit=1] run function dafi:internal/mechanics/addition/add_motion
execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches 1.. positioned ^ ^ ^1 run function dafi:internal/class/saint/raycast/ffa/raycast

#execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!ffa,tag=!this,dx=0] run function dafi:class/saint/raycast/ffa/checkhitentity