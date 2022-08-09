summon marker ~ ~ ~ {Tags:["dafi.arrow.Raycaster","dafi.arrow.FarFeet"]}
## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.arrow.raycast 50

## temporary tag to remember who fired the raycast
tag @s add dafi.arrow.this

## anchors raycast starting position to the eyes
execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=dafi.arrow.Init] feet as @e[type=marker,tag=dafi.arrow.Raycaster,tag=dafi.arrow.FarFeet] run function dafi:internal/mechanics/arrowaoe/blue/far/feet/raycast
#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.arrow.Raycaster]