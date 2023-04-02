## dafi:internal/class/saint/raycast/red/raycast
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/raycast/red/fire
# > dafi:internal/class/saint/raycast/red/raycast

#execute if score .itt dafi.raycast <= .itt.particle1.max dafi.raycast if score .itt dafi.raycast >= .itt.particle1.min dafi.raycast run particle witch ~ ~ ~ 0 0 0 0 1
execute if score .itt dafi.raycast <= .itt.particle1.max dafi.raycast if score .itt dafi.raycast >= .itt.particle1.min dafi.raycast run particle dust 1 0 0.667 1.4 ~ ~ ~ 0 0 0 0 1 force
execute if score .itt dafi.raycast <= .itt.particle2.max dafi.raycast if score .itt dafi.raycast >= .itt.particle2.min dafi.raycast run particle dust 0.533 0.09 0.247 1.2 ~ ~ ~ 0 0 0 0 1 force
execute if score .itt dafi.raycast <= .itt.particle3.max dafi.raycast if score .itt dafi.raycast >= .itt.particle3.min dafi.raycast run particle dust 0.247 0.141 0.165 1.0 ~ ~ ~ 0 0 0 0 1 force

execute if score .itt dafi.raycast <= .itt.particle4.max dafi.raycast if score .itt dafi.raycast >= .itt.particle4.min dafi.raycast run particle end_rod ~ ~ ~ 0 0 0 0.3 1 force
execute if score .itt dafi.raycast <= .itt.particle4.max dafi.raycast if score .itt dafi.raycast >= .itt.particle4.min dafi.raycast run particle dust 0 0.851 1 2.0 ~ ~ ~ 0 0 0 0 1 force
execute if score .itt dafi.raycast <= .itt.particle5.max dafi.raycast if score .itt dafi.raycast >= .itt.particle5.min dafi.raycast run particle dust 0.098 0.294 0.427 1.8 ~ ~ ~ 0 0 0 0 1 force
execute if score .itt dafi.raycast <= .itt.particle6.max dafi.raycast if score .itt dafi.raycast >= .itt.particle6.min dafi.raycast run particle dust 0.149 0.161 0.22 1.6 ~ ~ ~ 0 0 0 0 1 force


#execute if score .itt dafi.raycast matches ..1 run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force

#execute as @e[distance=..3] run say a
#execute if block ~ ~ ~ #dafi:partial run function dafi:internal/mechanics/raycast/partial

scoreboard players remove .itt dafi.raycast 1

execute if score .itt dafi.raycast matches 1.. positioned ^ ^ ^0.25 run function dafi:internal/class/shade/slash/raycast

#execute if entity @s[tag=dafi.shade.raycaster.mark.blue] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this,team=!blue] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_mark
#execute if entity @s[tag=dafi.shade.raycaster.mark.red] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this,team=!red] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_mark
#execute if entity @s[tag=dafi.shade.raycaster.mark.ffa] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_mark
#execute if entity @s[tag=dafi.shade.raycaster.damage.blue] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this,team=!blue] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_damage
#execute if entity @s[tag=dafi.shade.raycaster.damage.red] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this,team=!red] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_damage
#execute if entity @s[tag=dafi.shade.raycaster.damage.ffa] positioned ~ ~ ~ as @e[type=#dafi:entities_raycast,tag=!dafi.shade.this] run function dafi:internal/class/shade/slash/checkhitentity/checkhitentity_damage