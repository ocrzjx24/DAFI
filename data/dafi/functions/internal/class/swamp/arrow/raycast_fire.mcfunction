summon marker ~ ~ ~ {Tags:["dafi.arrow.swamp.raycaster"]}

data modify entity @e[tag=dafi.arrow.swamp.raycaster,limit=1] Rotation[0] set from entity @e[tag=dafi.arrow.swamp.originhelper,limit=1] Rotation[0]
data modify entity @e[tag=dafi.arrow.swamp.raycaster,limit=1] Rotation[1] set from entity @e[tag=dafi.arrow.swamp.originhelper,limit=1] Rotation[1]

## distance = #itt * step_size = 80 * 0.25 = 20 blocks
scoreboard players set .itt dafi.raycast 20

## temporary tag to remember who fired the raycast
# tag @s add dafi.arrow.swamp.this

## anchors raycast starting position to the eyes
execute as @e[type=marker,tag=dafi.arrow.swamp.raycaster] at @s run function dafi:internal/class/swamp/arrow/raycast
# tag @s remove dafi.arrow.swamp.this

kill @e[type=marker,tag=dafi.arrow.swamp.raycaster]