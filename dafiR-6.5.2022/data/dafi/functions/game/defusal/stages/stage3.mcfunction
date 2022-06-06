## BOSSBAR
execute store result bossbar defuse value run scoreboard players get #cd defusal

## SCOREBOARD
# EXECUTES
execute if score #cd defusal matches 600 run scoreboard players set #mod defusal 20
execute if score #cd defusal matches 200 run scoreboard players set #mod defusal 10
execute if score #cd defusal matches 100 run scoreboard players set #mod defusal 5
execute if score #cd defusal matches 30 run scoreboard players set #mod defusal 2
# ITERATION
scoreboard players operation #clone defusal = #cd defusal
scoreboard players operation #clone defusal %= #mod defusal

## PARTICLES
execute at @e[type=creeper, tag=bomb, tag=planted] run particle smoke ~ ~3 ~ 0.25 0.5 0.25 0.001 3 force
execute if score #cd defusal matches 800..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^1 ^2 ^ 0 0 0 0 0 force
execute if score #cd defusal matches 700..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^0.7 ^2 ^0.7 0 0 0 0 0 force
execute if score #cd defusal matches 600..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^ ^2 ^1 0 0 0 0 0 force
execute if score #cd defusal matches 500..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^-0.7 ^2 ^0.7 0 0 0 0 0 force
execute if score #cd defusal matches 400..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^-1 ^2 ^ 0 0 0 0 0 force
execute if score #cd defusal matches 300..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^-0.7 ^2 ^-0.7 0 0 0 0 0 force
execute if score #cd defusal matches 200..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^ ^2 ^-1 0 0 0 0 0 force
execute if score #cd defusal matches 100..900 at @e[type=creeper, tag=bomb, tag=planted] run particle dust 1 0 0 1 ^0.7 ^2 ^-0.7 0 0 0 0 0 force
execute if score #cd defusal matches 0..200 at @e[type=creeper, tag=bomb, tag=planted] run particle lava ~ ~2 ~ 0 0.5 0 0.001 3 force 
execute if score #cd defusal matches 0..100 at @e[type=creeper, tag=bomb, tag=planted] run particle flame ~ ~2.5 ~ 0.5 0.125 0.5 0.01 3 force 
execute if score #cd defusal matches 0..30 if score #clone defusal matches 0 at @e[type=creeper, tag=bomb, tag=planted] run particle flash ~ ~2 ~ 0 0 0 0 1 force 

## SOUND
execute if score #clone defusal matches 0 at @e[type=creeper, tag=bomb, tag=planted] run playsound minecraft:block.note_block.didgeridoo voice @a[distance=..100] ~ ~ ~ 1 2 0.5

## T VICTORY - BOMB
execute if score #cd defusal matches 0 run function dafi:game/defusal/events/bomb_explode

## T VICTORY - KILL ALL CT
execute if score #blue defusal matches 0 run title @a[team=blue] title ["",{"text":"ALL COUNTER TERRORISTS DEAD","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run title @a[team=red] title ["",{"text":"ALL COUNTER TERRORISTS DEAD","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run title @a[team=blue] subtitle ["",{"text":"TERRORISTS WIN","bold":true,"color":"light_red"}]
execute if score #blue defusal matches 0 run title @a[team=red] subtitle ["",{"text":"TERRORISTS WIN","bold":true,"color":"light_red"}]
execute if score #blue defusal matches 0 run playsound ui.toast.challenge_complete voice @a[team=red] ~ ~ ~ 1 1 1
execute if score #blue defusal matches 0 run playsound entity.villager.no voice @a[team=blue] ~ ~ ~ 1 1 1
# RESET
execute if score #blue defusal matches 0 run function dafi:game/defusal/events/reset

## CT VICTORY - DEFUSAL
execute at @e[type=creeper, tag=bomb, tag=planted] if block ~ ~2 ~ air run function dafi:game/defusal/events/defuse