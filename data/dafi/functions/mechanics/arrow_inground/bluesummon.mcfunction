tag @s add arrowInit
scoreboard players add .global arrowSID 1
summon marker ~ ~ ~ {NoGravity:1b,CustomNameVisible:1b,Tags:["lineOfSightCheck","arrowInit"],CustomName:'{"text":"Check","color":"gold","bold":true}'}
execute as @e[type=marker,tag=lineOfSightCheck,tag=arrowInit] unless score @s arrowSID matches 0.. run scoreboard players operation @e[type=marker,tag=lineOfSightCheck,tag=arrowInit] arrowSID = .global arrowSID
scoreboard players operation @e[type=!arrow,type=!marker,tag=arrowInit] arrowSID = .global arrowSID
#execute as @e[type=marker,tag=lineOfSightCheck,tag=arrowInit,limit=1] anchored eyes run tp @s ~ ~ ~ facing entity @e[type=!arrow,type=!marker,tag=arrowInit,limit=1] feet
execute as @e[type=marker,tag=lineOfSightCheck,limit=1] run function dafi:mechanics/arrowaoe/blue/close/eyes/fire
execute as @e[type=marker,tag=lineOfSightCheck,limit=1] run function dafi:mechanics/arrowaoe/blue/close/feet/fire
execute as @s[tag=!closeDamage] as @e[type=marker,tag=lineOfSightCheck,limit=1] run function dafi:mechanics/arrowaoe/blue/far/eyes/fire
execute as @s[tag=!closeDamage] as @e[type=marker,tag=lineOfSightCheck,limit=1] run function dafi:mechanics/arrowaoe/blue/far/feet/fire
effect give @s[tag=closeDamage] instant_damage 1 1 false
effect give @s[tag=farDamage] instant_damage 1 0 false
tag @s[tag=arrowEyesHit] remove arrowEyesHit
tag @s[tag=arrowFeetHit] remove arrowFeetHit
tag @s[tag=closeDamage] remove closeDamage
tag @s[tag=farDamage] remove farDamage
execute if score @s arrowSID = @e[type=marker,tag=lineOfSightCheck,tag=arrowInit,limit=1] arrowSID as @e[type=marker,tag=lineOfSightCheck,tag=arrowInit,limit=1] run kill @s
tag @s remove arrowInit