## dafi:internal/class/saint/raycast/fire
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/main

execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["dafi.saint.raycaster.blue","dafi.saint.raycaster.kill"]}
execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["dafi.saint.raycaster.red","dafi.saint.raycaster.kill"]}
execute as @s[team=ffa] run summon marker ~ ~ ~ {Tags:["dafi.saint.raycaster.ffa","dafi.saint.raycaster.kill"]}
## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 30

## temporary tag to remember who fired the raycast
tag @s add dafi.saint.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.saint.raycaster.kill] run function dafi:internal/class/saint/raycast/raycast

## remove temp tag
tag @s remove dafi.saint.this

#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.saint.raycaster.kill]
