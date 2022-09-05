tag @s add dafi.arrow.init
scoreboard players add .global dafi.arrow.SID 1
summon marker ~ ~ ~ {NoGravity:1b,CustomNameVisible:1b,Tags:["dafi.arrow.lineOfSightCheck","dafi.arrow.init"],CustomName:'{"text":"Check","color":"gold","bold":true}'}
execute as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,tag=dafi.arrow.init] unless score @s SID matches 0.. run scoreboard players operation @e[type=marker,tag=dafi.arrow.lineOfSightCheck,tag=init] SID = .global SID
scoreboard players operation @e[type=!arrow,type=!marker,tag=dafi.arrow.init] dafi.arrow.SID = .global dafi.arrow.SID
#execute as @e[type=marker,tag=lineOfSightCheck,tag=init,limit=1] anchored eyes run tp @s ~ ~ ~ facing entity @e[type=!arrow,type=!marker,tag=init,limit=1] feet
execute as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,limit=1] run function dafi:internal/mechanics/arrowaoe/blue/close/eyes/fire
execute as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,limit=1] run function dafi:internal/mechanics/arrowaoe/blue/close/feet/fire
execute as @s[tag=!dafi.arrow.closeDamage] as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,limit=1] run function dafi:internal/mechanics/arrowaoe/blue/far/eyes/fire
execute as @s[tag=!dafi.arrow.closeDamage] as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,limit=1] run function dafi:internal/mechanics/arrowaoe/blue/far/feet/fire
effect give @s[tag=dafi.arrow.closeDamage,tag=!dafi.balling] instant_damage 1 1 false
effect give @s[tag=dafi.arrow.farDamage,tag=!dafi.balling] instant_damage 1 0 false
effect give @s[tag=dafi.arrow.closeDamage,tag=dafi.balling] instant_damage 1 2 false
effect give @s[tag=dafi.arrow.farDamage,tag=dafi.balling] instant_damage 1 1 false
tag @s[tag=dafi.arrow.eyesHit] remove dafi.arrow.eyesHit
tag @s[tag=dafi.arrow.feetHit] remove dafi.arrow.feetHit
tag @s[tag=dafi.arrow.closeDamage] remove dafi.arrow.closeDamage
tag @s[tag=dafi.arrow.farDamage] remove dafi.arrow.farDamage
execute if score @s dafi.arrow.SID = @e[type=marker,tag=dafi.arrow.lineOfSightCheck,tag=dafi.arrow.init,limit=1] dafi.arrow.SID as @e[type=marker,tag=dafi.arrow.lineOfSightCheck,tag=dafi.arrow.init,limit=1] run kill @s
tag @s remove dafi.arrow.init