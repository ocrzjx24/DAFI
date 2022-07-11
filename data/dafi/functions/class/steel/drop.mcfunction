## SUMMON
# summon shulker ^ ^ ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-1 ^ ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-2 ^ ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^1 ^ ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^2 ^ ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^ ^1 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-1 ^1 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-2 ^1 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^1 ^1 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^2 ^1 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
#summon shulker ^ ^2 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-1 ^2 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^-2 ^2 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^1 ^2 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}
# summon shulker ^2 ^2 ^2 {Color:5,Silent:1,NoAI:1,Tags:["shulkerLife"]}

tag @s add init

execute at @s positioned ^ ^ ^4 run function dafi:class/steel/summon1

scoreboard players add .global sbsid 1
scoreboard players operation @e[type=armor_stand,tag=shulkerLife,limit=25,tag=init] sbsid = .global sbsid
scoreboard players operation @e[type=shulker,tag=shulkerLife,limit=25] sbsid = .global sbsid
scoreboard players operation @p[tag=init] sbsid = .global sbsid
tag @e remove init

## SOUND
playsound minecraft:entity.iron_golem.hurt master @a[distance=..10] ~ ~ ~ 100 1 1
playsound minecraft:entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 100 0.6 1

## PARTICLE
execute at @s positioned ~ ~1 ~ run function dafi:class/steel/particle/particle2
particle minecraft:smoke ^ ^ ^1 0 0 0 0.5 300

## TITLE
title @s actionbar {"text":"EMPODIO DEPLOYED","bold":true,"color":"dark_green"}
