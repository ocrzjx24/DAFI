## dafi:internal/class/saint/raycast/red/fire
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/main

execute as @s[tag=dafi.blue] run summon marker ~ ~ ~ {Tags:["dafi.steel.raycaster.blue","dafi.steel.raycaster.kill"]}
execute as @s[tag=dafi.red] run summon marker ~ ~ ~ {Tags:["dafi.steel.raycaster.red","dafi.steel.raycaster.kill"]}
execute as @s[tag=dafi.ffa] run summon marker ~ ~ ~ {Tags:["dafi.steel.raycaster.ffa","dafi.steel.raycaster.kill"]}
## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 16

## temporary tag to remember who fired the raycast
tag @s add dafi.steel.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.steel.raycaster.kill] run function dafi:internal/class/steel/slash/raycast

## remove temp tag
tag @s remove dafi.steel.this

#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.steel.raycaster.kill]