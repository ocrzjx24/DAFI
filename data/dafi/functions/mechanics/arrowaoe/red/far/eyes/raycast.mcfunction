#particle end_rod ~ ~ ~ 0 0 0 0 1

execute if block ~ ~ ~ #dafi:partial run function dafi:mechanics/raycast/partial

scoreboard players remove .arfeitt raycast 1

execute if score .arfeitt raycast matches 1.. if block ~ ~ ~ #dafi:air positioned ^ ^ ^0.1 run function dafi:mechanics/arrowaoe/red/far/eyes/raycast

execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!this,dx=0] run function dafi:mechanics/arrowaoe/red/far/eyes/checkhitentity