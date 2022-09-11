## dafi:internal/class/saint/raycast/ffa/fire
# starts the saint raycast (if the player is on the ffa team)
#
# callers:
# > dafi:internal/class/saint/main

summon marker ~ ~ ~ {Tags:["dafi.saint.ffaraycaster"]}

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 30

## temporary tag to remember who fired the raycast
tag @s add dafi.saint.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.saint.ffaraycaster] run function dafi:internal/class/saint/raycast/ffa/raycast
#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.saint.ffaraycaster]