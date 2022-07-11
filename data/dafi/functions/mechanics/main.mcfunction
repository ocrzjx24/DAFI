## ANTIDROP
function dafi:mechanics/antidrop/main

## ARROW
function dafi:mechanics/arrow/main

## CROSSBOW MAINHAND
function dafi:mechanics/crossbow_mainhand/main

## DAMAGE
function dafi:mechanics/cw_hp_control/main

## DEATHS
function dafi:mechanics/deaths/main

## DOUBLE JUMP
function dafi:mechanics/doublejump/main

## GLOWING
function dafi:mechanics/glowing/main

## HAT SYSTEM
function dafi:mechanics/hat_system/main

## KILLS
function dafi:mechanics/kills/main

## KILL
function dafi:mechanics/arrow_inground/main

## NO GRAVITY
function dafi:mechanics/no_gravity/main

## BOOST
function dafi:mechanics/piston_boost/main

## RAYCAST
# function dafi:mechanics/raycast/

## REGENERATION
function dafi:mechanics/regeneration/main

## ROCKETS
function dafi:mechanics/rockets/main

## SLOWNESS
function dafi:mechanics/slowness/main

## WALLRUN
function dafi:mechanics/wallrun/main


## UUID STORE
execute as @a[tag=!DoNotRemove_UUIDstore] run function dafi:mechanics/uuid/main

## THIS NEEDS TO BE LAST
execute as @a[advancements={dafi:shield=true}] run advancement revoke @s only dafi:shield