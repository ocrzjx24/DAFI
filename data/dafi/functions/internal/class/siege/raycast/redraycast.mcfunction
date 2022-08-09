execute if score .itt dafi.siege.raycast matches ..95 run particle dust 0 0 0 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1

execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.siege.raycast 1

execute if score .itt dafi.siege.raycast matches 1.. if block ~ ~ ~ #dafi:air positioned ^ ^ ^0.25 run function dafi:internal/class/siege/raycast/redraycast

execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!dafi.siege.this,dx=0] run function dafi:internal/class/siege/raycast/redcheckhitentity