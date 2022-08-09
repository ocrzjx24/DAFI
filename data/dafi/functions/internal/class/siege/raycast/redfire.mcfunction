summon marker ~ ~ ~ {Tags:["dafi.siege.raycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.siege.raycast 100

## temporary tag to remember who fired the raycast
tag @s add dafi.siege.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.siege.raycaster] run function dafi:internal/class/siege/raycast/redraycast
tag @s remove dafi.siege.this

## scoreboard 
scoreboard players add @e[tag=dafi.siege.hit] dafi.siege.hitcount 1
tag @e remove dafi.siege.hit

kill @e[type=marker,tag=dafi.siege.raycaster]