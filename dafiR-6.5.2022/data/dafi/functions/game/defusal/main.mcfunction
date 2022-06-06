## KILL FUNCTIONS
kill @e[type=item,nbt={Item:{id:"minecraft:compass"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:daylight_detector"}}]

## PASSIVE
effect give @a[nbt={SelectedItem:{id:"minecraft:shears"}}] minecraft:mining_fatigue 1 1 true

## ITERATION
scoreboard players remove #cd defusal 1

## DROP
execute if entity @a[scores={defusal=1}] run function dafi:game/defusal/events/drop

## DEATHCHECK
function dafi:game/defusal/checks/deathcheck

## COUNTDOWN / STAGE 1
execute if score #stage defusal matches 1 run function dafi:game/defusal/stages/stage1

## IDLE TIME / STAGE 2
execute if score #stage defusal matches 2 run function dafi:game/defusal/stages/stage2

## BOMB TIME / STAGE 3
execute if score #stage defusal matches 3 run function dafi:game/defusal/stages/stage3