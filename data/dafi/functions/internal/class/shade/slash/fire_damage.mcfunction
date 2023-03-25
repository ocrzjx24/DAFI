## dafi:internal/class/saint/raycast/red/fire
# starts the saint raycast (if the player is on the red team)
#
# callers:
# > dafi:internal/class/saint/main

execute as @s[tag=dafi.blue] run summon marker ~ ~ ~ {Tags:["dafi.shade.raycaster.damage.blue","dafi.shade.raycaster.kill"]}
execute as @s[tag=dafi.red] run summon marker ~ ~ ~ {Tags:["dafi.shade.raycaster.damage.red","dafi.shade.raycaster.kill"]}
execute as @s[tag=dafi.ffa] run summon marker ~ ~ ~ {Tags:["dafi.shade.raycaster.damage.ffa","dafi.shade.raycaster.kill"]}
## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 24

## temporary tag to remember who fired the raycast
tag @s add dafi.shade.this

## anchors raycast starting position to the eyes
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=dafi.shade.raycaster.kill] run function dafi:internal/class/shade/slash/raycast

## remove temp tag
tag @s remove dafi.shade.this

#execute anchored feet positioned ^ ^ ^ facing entity @e[type=!marker,tag=arrowInit] eyes positioned ~ ~-1 ~ as @e[type=marker,tag=arrowRaycaster,tag=arrowMid] run function dafi:mechanics/arrowaoe/redraycast

kill @e[type=marker,tag=dafi.shade.raycaster.kill]
