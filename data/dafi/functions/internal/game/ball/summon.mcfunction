tag @s add dafi.ball.summon
#execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["dafi.ball"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{id:"note_block",Count:1b}],HandItems:[{id:"note_block",Count:1b},{}],CustomName:'{"text":"ball"}',CustomNameVisible:1b,Pose:{RightArm:[240f,270f,0f]},Passengers:[{id:"minecraft:slime",Tags:["dafi.ball"],Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,Size:1,CustomName:'{"text":"ball"}'}]}
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["dafi.ball"],Invisible:1b,Small:1b,Passengers:[{id:"minecraft:slime",Tags:["dafi.ball"],Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,Size:1,NoAI:1,CustomName:'{"text":"ball"}'}]}
#execute anchored eyes positioned ^ ^ ^ run summon slime ~ ~ ~ {Tags:["dafi.ball"],Silent:1b,Invulnerable:1b,Glowing:1b,CustomName:'{"text":"ball"}',CustomNameVisible:1b,}
data modify entity @e[tag=dafi.ball,tag=!dafi.ball.motion_added,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s as @e[tag=dafi.ball,tag=!dafi.ball.motion_added,type=armor_stand] run function dafi:internal/game/ball/applymotion
tag @s remove dafi.ball.summon