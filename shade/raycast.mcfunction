## ENTITY HIT
execute if score #hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=#dafi:entities_raycast,tag=!raycast,dx=0,sort=nearest] run function dafi:mechanics/raycast/checkhitentity
execute if score #hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=shulker,tag=!raycast,dx=0,sort=nearest] run scoreboard players set #hit raycast 1
## BLOCK HIT
execute unless block ~ ~ ~ #dafi:blocks_raycast run function dafi:mechanics/raycast/hitblock

## SCOREBOARD
scoreboard players add #distance raycast 1

## RECURSION
execute if score #hit raycast matches 0 if score #distance raycast matches ..120 if score @s wallbang matches ..2 positioned ^ ^ ^0.2 run function dafi:class/shade/raycast

## PARTICLE
particle dust 0.227 0 0.486 1 ~ ~ ~ 0 0 0 0 0 force
particle reverse_portal ~ ~ ~ 0 0 0 0.05 1 force