particle end_rod ~ ~ ~ 0 0 0 0 1

execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches 1.. if block ~ ~ ~ #dafi:air positioned ^ ^ ^0.1 run function dafi:internal/mechanics/arrowaoe/red/far/feet/raycast

execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!dafi.arrow.this,dx=0] run function dafi:internal/mechanics/arrowaoe/red/far/feet/checkhitentity