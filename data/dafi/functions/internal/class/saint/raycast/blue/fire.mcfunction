## dafi:internal/class/saint/raycast/blue/fire
# starts the saint raycast (if the player is on the blue team)
#
# callers:
# > dafi:internal/class/saint/main

summon marker ~ ~ ~ {Tags:["dafi.saint.blueraycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 30

## temporary tag to remember who fired the raycast
tag @s add dafi.saint.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.saint.blueraycaster] run function dafi:internal/class/saint/raycast/blue/raycast
#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.saint.blueraycaster]