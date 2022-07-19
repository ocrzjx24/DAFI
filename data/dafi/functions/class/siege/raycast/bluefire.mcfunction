summon marker ~ ~ ~ {Tags:["raycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt raycast 100

## temporary tag to remember who fired the raycast
tag @s add this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=raycaster] run function dafi:class/siege/raycast/blueraycast
tag @s remove this

## scoreboard 
scoreboard players add @e[tag=dafi.siege.hit] hitcount 1
tag @e remove dafi.siege.hit

kill @e[type=marker,tag=raycaster]