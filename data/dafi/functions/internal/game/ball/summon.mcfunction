tag @s add dafi.ball.summon
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["dafi.ball"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{id:"note_block",Count:1b}],HandItems:[{id:"note_block",Count:1b},{}],CustomName:'{"text":"ball"}',CustomNameVisible:1b,Pose:{RightArm:[240f,270f,0f]}}
data modify entity @e[type=armor_stand,tag=!dafi.ball.motion_added,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s as @e[type=armor_stand,tag=!dafi.ball.motion_added] run function dafi:internal/game/ball/applymotion
tag @s remove dafi.ball.summon