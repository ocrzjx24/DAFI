data modify entity @s Pos set from storage death Pos

execute at @s run summon armor_stand ~ ~ ~ {Motion:[0.0,0.8,0.0],Tags:["dafi.ball"],Invisible:1b,ShowArms:1b,Small:1b,ArmorItems:[{},{},{},{id:"note_block",Count:1b}],HandItems:[{id:"note_block",Count:1b},{}],CustomName:'{"text":"ball"}',CustomNameVisible:1b,Pose:{RightArm:[240f,270f,0f]}}
execute at @s positioned ~ ~0.5 ~ run particle block redstone_block ~ ~ ~ 0 0 0 1 30

kill @s