## BOSSBAR
execute if score #cd defusal matches 1200 run bossbar set defuse max 1200
execute if score #cd defusal matches 1200 run bossbar set defuse color green
execute store result bossbar defuse value run scoreboard players get #cd defusal

## BOMB PLANT
execute at @e[type=creeper,tag=bomb, tag=!planted] run function dafi:game/defusal/events/bomb_plant

## CT VICTORY - TIMEOUT
# TITLE / SOUND
execute if score #cd defusal matches 0 run title @a[team=blue] title ["",{"text":"TIME LIMIT REACHED","bold":true,"color":"dark_blue"}]
execute if score #cd defusal matches 0 run title @a[team=red] title ["",{"text":"TIME LIMIT REACHED","bold":true,"color":"dark_blue"}]
execute if score #cd defusal matches 0 run title @a[team=blue] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]
execute if score #cd defusal matches 0 run title @a[team=red] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]
execute if score #cd defusal matches 0 run playsound ui.toast.challenge_complete voice @a[team=blue] ~ ~ ~ 1 1 1
execute if score #cd defusal matches 0 run playsound entity.villager.no voice @a[team=red] ~ ~ ~ 1 1 1
# RESET
execute if score #cd defusal matches 0 run function dafi:game/defusal/events/reset

## CT VICTORY - KILL ALL T
execute if score #red defusal matches 0 run title @a[team=blue] title ["",{"text":"ALL TERRORISTS DEAD","bold":true,"color":"dark_blue"}]
execute if score #red defusal matches 0 run title @a[team=red] title ["",{"text":"ALL TERRORISTS DEAD","bold":true,"color":"dark_blue"}]
execute if score #red defusal matches 0 run title @a[team=blue] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]
execute if score #red defusal matches 0 run title @a[team=red] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]
execute if score #red defusal matches 0 run playsound ui.toast.challenge_complete voice @a[team=blue] ~ ~ ~ 1 1 1
execute if score #red defusal matches 0 run playsound entity.villager.no voice @a[team=red] ~ ~ ~ 1 1 1
# RESET
execute if score #red defusal matches 0 run function dafi:game/defusal/events/reset

## T VICTORY - KILL ALL CT
execute if score #blue defusal matches 0 run title @a[team=blue] title ["",{"text":"ALL COUNTER TERRORISTS DEAD","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run title @a[team=red] title ["",{"text":"ALL COUNTER TERRORISTS DEAD","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run title @a[team=blue] subtitle ["",{"text":"TERRORISTS WIN","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run title @a[team=red] subtitle ["",{"text":"TERRORISTS WIN","bold":true,"color":"red"}]
execute if score #blue defusal matches 0 run playsound ui.toast.challenge_complete voice @a[team=red] ~ ~ ~ 1 1 1
execute if score #blue defusal matches 0 run playsound entity.villager.no voice @a[team=blue] ~ ~ ~ 1 1 1

# RESET
execute if score #blue defusal matches 0 run function dafi:game/defusal/events/reset