## PASSIVES
effect give @s speed 1 3 true
effect give @s jump_boost 1 2 true
effect give @s resistance 1 1 true
effect give @s strength 1 1 true

## ABILITY 1 - ORB
execute at @s[scores={dropEmerald=1}] run playsound entity.blaze.shoot master @a ~ ~ ~ 1 2 0.5
execute at @s[scores={dropEmerald=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["orb"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{}]}
execute at @s[scores={dropEmerald=1}] run scoreboard players set @e[type=armor_stand,tag=orb,limit=1,sort=nearest] dropEmerald 1
execute at @s[scores={dropEmerald=1}] run tp @e[type=armor_stand,tag=orb,limit=1,sort=nearest] ~ ~ ~ ~ ~ 
# HOMING / PARTICLES
execute as @e[tag=orb] run function dafi:class/main_classes/brolee/broly_orb
# ITERATION / RESET
scoreboard players add @a[scores={dropEmerald=1..}] dropEmerald 1
scoreboard players reset @a[scores={dropEmerald=1..}] dropEmerald 

## ABILITY 2 - SLAM
execute as @a[scores={dropHide=1}] at @s run function dafi:class/main_classes/brolee/broly_dash
execute at @a[scores={dropHide=11}] run tp @e[type=slime, tag=brolled] ~ -100 ~
execute as @a[scores={dropHide=1..21}] at @s if block ~ ~-0.1 ~ air run effect give @e[distance=..3,tag=!broly] instant_damage 1 1 true 
execute as @a[scores={dropHide=1..21}] at @s if block ~ ~-0.1 ~ air run particle dust 0 1 0.2 1 ~ ~ ~ 0.5 0.5 0.5 10 50 force
# maybe do something of when the player hits the ground or something
# ITERATION / RESET
scoreboard players reset @a[scores={dropHide=61..}] dropHide
scoreboard players add @a[scores={dropHide=1..}] dropHide 1

## ABILITY 3 - GRAB
execute as @a[scores={dropFoot=1}] at @s run tag @e[distance=..3, tag=!broly, tag=!orb, type=!item] add grabbed
execute as @a[scores={dropFoot=1}] run effect give @s slowness 1 5 true
execute as @a[scores={dropFoot=1..10}] at @s run tp @e[tag=grabbed] ^ ^2 ^1 ~ ~
execute as @a[scores={dropFoot=10}] run effect clear @s slowness
execute at @a[scores={dropFoot=11}] as @e[tag=grabbed] at @s run effect give @s instant_damage 1 0 true
# execute at @a[scores={dropFoot=11}] as @e[distance=..2,type=creeper] at @s run effect give @s levitation 1 10 true
execute at @a[scores={dropFoot=11}] at @e[tag=grabbed] positioned ~ ~1 ~ run function dafi:class/main_classes/brolee/broly_dash
# execute at @a[scores={dropFoot=14}] as @e[tag=!broly] at @s run effect clear @s levitation
execute at @a[scores={dropFoot=11}] run tag @e[tag=grabbed] remove grabbed
execute at @a[scores={dropFoot=21}] run tp @e[type=slime, tag=brolled] ~ -1000 ~

# ITERATION / RESET
scoreboard players reset @a[scores={dropFoot=61..}] dropFoot
scoreboard players add @a[scores={dropFoot=1..}] dropFoot 1