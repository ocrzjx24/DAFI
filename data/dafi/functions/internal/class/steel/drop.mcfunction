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

tag @s add dafi.steel.init

execute at @s anchored feet positioned ^ ^ ^4 run function dafi:internal/class/steel/summon1

scoreboard players add .global dafi.sbsid 1
scoreboard players operation @e[type=armor_stand,tag=dafi.steel.shulkerLife,limit=25,tag=dafi.steel.init] dafi.sbsid = .global dafi.sbsid
scoreboard players operation @e[type=shulker,tag=dafi.steel.shulkerLife,limit=25] dafi.sbsid = .global dafi.sbsid
scoreboard players operation @p[tag=dafi.steel.init] dafi.sbsid = .global dafi.sbsid
tag @e remove dafi.steel.init

## SOUND
playsound minecraft:entity.iron_golem.hurt master @a[distance=..10] ~ ~ ~ 100 1 1
playsound minecraft:entity.player.attack.crit master @a[distance=..10] ~ ~ ~ 100 0.6 1

## PARTICLE
execute at @s positioned ~ ~1 ~ run function dafi:internal/class/steel/particle/particle2
particle minecraft:smoke ^ ^ ^1 0 0 0 0.5 300

## TITLE
title @s actionbar {"text":"EMPODIO DEPLOYED","bold":true,"color":"dark_green"}
