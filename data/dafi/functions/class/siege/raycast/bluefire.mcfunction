summon marker ~ ~ ~ {Tags:["raycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt raycast 200

## temporary tag to remember who fired the raycast
tag @s add this
## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=raycaster] run function dafi:class/siege/raycast/blueraycast
tag @s remove this

## my code sucks
clear @s spyglass
scoreboard players set @s dropSpyglass 1

kill @e[type=marker,tag=raycaster]