summon marker ~ ~ ~ {Tags:["dafi.raycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 200

## temporary tag to remember who fired the raycast
tag @s add dafi.raycast.this
## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.raycaster] run function dafi:internal/mechanics/raycast/raycast
tag @s remove dafi.raycast.this

kill @e[type=marker,tag=dafi.raycaster]

