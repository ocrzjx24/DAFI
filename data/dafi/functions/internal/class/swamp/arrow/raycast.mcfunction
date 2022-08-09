# execute if score .itt dafi.raycast matches ..20 run particle squid_ink ~ ~ ~ 0.05 0.05 0.05 0 1

# execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches ..18 if block ~ ~ ~ minecraft:air positioned ^ ^ ^ run function dafi:internal/class/swamp/arrow/raycast_end
# put a partial here
execute if score .itt dafi.raycast matches 1.. positioned ^ ^ ^0.25 run function dafi:internal/class/swamp/arrow/raycast

# execute positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,team=!red,tag=!dafi.siege.this,dx=0] run function dafi:internal/class/siege/raycast/redcheckhitentity