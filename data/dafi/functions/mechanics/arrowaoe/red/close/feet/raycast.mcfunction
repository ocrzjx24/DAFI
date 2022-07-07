particle composter ~ ~ ~ 0 0 0 0 1

execute if block ~ ~ ~ #dafi:partial run function dafi:mechanics/raycast/partial

scoreboard players remove .arcfitt raycast 1

execute if score .arcfitt raycast matches 1.. if block ~ ~ ~ #dafi:air positioned ^ ^ ^0.1 run function dafi:mechanics/arrowaoe/red/close/feet/raycast

execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!this,dx=0] run function dafi:mechanics/arrowaoe/red/close/feet/checkhitentity