summon marker ~ ~ ~ {Tags:["dafi.arrow.raycaster","dafi.arrow.farEyes"]}
## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 50

## temporary tag to remember who fired the raycast
tag @s add dafi.arrow.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ facing entity @e[type=!marker,tag=dafi.arrow.init] eyes as @e[type=marker,tag=dafi.arrow.raycaster,tag=dafi.arrow.farEyes] run function dafi:internal/mechanics/arrowaoe/blue/far/eyes/raycast
#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.arrow.raycaster]