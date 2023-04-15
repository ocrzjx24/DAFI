## ANTIDROP
execute if score #universal dafi.antidrop matches 1 run function dafi:internal/mechanics/antidrop/main

## ARROW
function dafi:internal/mechanics/arrow/main

## CROSSBOW MAINHAND
function dafi:internal/mechanics/crossbow_mainhand/main

## DAMAGE
function dafi:internal/mechanics/cw_hp_control/main

## DEATHS
function dafi:internal/mechanics/deaths/main

## GLOWING
function dafi:internal/mechanics/glowing/main

## KILLS
function dafi:internal/mechanics/kills/main

## PISTON BOOST
execute if score #universal dafi.pistonboost matches 1 run function dafi:internal/mechanics/piston_boost/main

## REGENERATION
function dafi:internal/mechanics/regeneration/main

## ROCKETS
execute if score #universal dafi.rocketjump matches 1 run function dafi:internal/mechanics/rockets/main

## SLIDE
function dafi:internal/mechanics/slide/main

## DOUBLE JUMP
execute if score #universal dafi.dash matches 1 as @s run function dafi:internal/mechanics/dash/main


## SLOWNESS
function dafi:internal/mechanics/slowness/main

## SPRINT
execute if score #universal dafi.sprint matches 1 run function dafi:internal/mechanics/sprint/main

## WALLRUN
function dafi:internal/mechanics/wallrun/main

## UUID STORE
execute as @a[tag=!DoNotRemove_UUIDstore] run function dafi:internal/mechanics/uuid/main

## MOTION VECTOR ADDITION (SHOULD BE NEAR LAST)
function dafi:internal/mechanics/addition/main

## THIS NEEDS TO BE LAST
execute as @a[advancements={dafi:shield=true}] run advancement revoke @s only dafi:shield