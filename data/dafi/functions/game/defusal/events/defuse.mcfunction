## TITLE
title @a[team=blue] title ["",{"text":"BOMB DEFUSED","bold":true,"color":"dark_blue"}]
title @a[team=red] title ["",{"text":"BOMB DEFUSED","bold":true,"color":"dark_blue"}]
title @a[team=blue] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]
title @a[team=red] subtitle ["",{"text":"COUNTER TERRORISTS WIN","bold":true,"color":"blue"}]

## SOUND
playsound ui.toast.challenge_complete voice @a[team=blue] ~ ~ ~ 1 1 1
playsound entity.villager.no voice @a[team=red] ~ ~ ~ 1 1 1

## KILL
kill @e[type=creeper, tag=bomb, tag=planted]

## RESET
function dafi:game/defusal/events/reset