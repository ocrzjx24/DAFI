## TITLE
title @a[team=blue] title ["",{"text":"TERRORISTS WIN","bold":true,"color":"dark_red"}]
title @a[team=red] title ["",{"text":"TERRORISTS WIN","bold":true,"color":"dark_red"}]

## SOUND
playsound ui.toast.challenge_complete voice @a[team=red] ~ ~ ~ 1 1 1
playsound entity.villager.no voice @a[team=blue] ~ ~ ~ 1 1 1

## SETBLOCK
execute at @e[type=creeper, tag=bomb, tag=planted] run setblock ~ ~2 ~ air

## EXPLOSION
execute at @e[type=creeper, tag=bomb, tag=planted] run summon creeper ~ ~2 ~ {Fuse:0, ExplosionRadius:15}
kill @e[type=creeper, tag=bomb, tag=planted]

## RESET
function dafi:game/defusal/events/reset