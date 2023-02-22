## dafi:internal/class/saint/raycast/raycast
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/raycast/fire
# > dafi:internal/class/saint/raycast/raycast

#execute if score .itt dafi.raycast <= .itt.particle1.max dafi.raycast if score .itt dafi.raycast >= .itt.particle1.min dafi.raycast run particle witch ~ ~ ~ 0 0 0 0 1
particle snowflake ~ ~ ~ 0 0 0 0 1 force
particle cloud ~ ~ ~ 0 0 0 0 1 force


#execute if score .itt dafi.raycast matches ..1 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force

#execute as @e[distance=..3] run say a
execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches 1.. positioned ^ ^ ^0.5 run function dafi:internal/class/saint/raycast/raycast

execute if entity @s[tag=dafi.saint.raycaster.blue] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.saint.this,team=!blue] run function dafi:internal/class/saint/raycast/checkhitentity
execute if entity @s[tag=dafi.saint.raycaster.blue] positioned ~ ~ ~ as @e[tag=dafi.saint.vortex,tag=!dafi.saint.this] run function dafi:internal/class/saint/raycast/checkhitentity

execute if entity @s[tag=dafi.saint.raycaster.red] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.saint.this,team=!red] run function dafi:internal/class/saint/raycast/checkhitentity
execute if entity @s[tag=dafi.saint.raycaster.red] positioned ~ ~ ~ as @e[tag=dafi.saint.vortex,tag=!dafi.saint.this] run function dafi:internal/class/saint/raycast/checkhitentity

execute if entity @s[tag=dafi.saint.raycaster.ffa] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.saint.this] run function dafi:internal/class/saint/raycast/checkhitentity
execute if entity @s[tag=dafi.saint.raycaster.ffa] positioned ~ ~ ~ as @e[tag=dafi.saint.vortex,tag=!dafi.saint.this] run function dafi:internal/class/saint/raycast/checkhitentity
