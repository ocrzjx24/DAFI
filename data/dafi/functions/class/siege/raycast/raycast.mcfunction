particle crit ~ ~ ~ 0 0 0 0 1

execute if block ~ ~ ~ #dafi:partial run function dafi:mechanics/raycast/partial

scoreboard players remove .itt raycast 1

execute if score .itt raycast matches 1.. if block ~ ~ ~ #dafi:air positioned ^ ^ ^0.25 run function dafi:class/siege/raycast/raycast