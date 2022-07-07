summon marker ~ ~ ~ {Tags:["arrowRaycaster","arrowFarEyes"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .abfeitt raycast 50

## temporary tag to remember who fired the raycast
tag @s add this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes as @e[type=marker,tag=arrowRaycaster,tag=arrowFarEyes] run function dafi:mechanics/arrowaoe/blue/far/eyes/raycast
#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=arrowRaycaster]