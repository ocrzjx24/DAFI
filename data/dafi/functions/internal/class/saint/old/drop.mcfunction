## EFFECT
# self
#effect give @s minecraft:levitation 1 8 true
# others
execute at @s[team=blue] run effect give @e[distance=..10,team=!blue] minecraft:levitation 1 0 true
execute at @s[team=red] run effect give @e[distance=..10,team=!red] minecraft:levitation 1 0 true

## SCOREBOARD
#scoreboard players set @s vtol 0

## PARTICLE
particle minecraft:instant_effect ~ ~ ~ 5 0.4 5 1 400 force

## SOUND
playsound minecraft:block.beacon.power_select master @a[distance=..10] ~ ~1000 ~ 1000 1 1

## TEXT
# self
execute if score @s dafi.internal.saint.dropFeather matches 1 run title @s actionbar {"text":"! UPDRAFT !","bold":true}
# others
execute at @s[team=blue] run title @a[distance=..10,team=!blue] actionbar {"text":"! UPDRAFT !","bold":true}
execute at @s[team=red] run title @a[distance=..10,team=!red] actionbar {"text":"! UPDRAFT !","bold":true}