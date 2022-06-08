## DROPPED SHOT
execute at @s[scores={dropSpyglass=1}] run function dafi:class/siege/spark
# fix placeholder

## CHARGED SHOT
execute at @s[scores={spyglassCheck=0,spyglass=1..}] run say hi
execute at @s run execute if score @s spyglass matches 1..20 if score @s spyglassCheck matches 0 run function dafi:class/siege/spark
execute at @s run execute if score @s spyglass matches 20.. if score @s spyglassCheck matches 0 run function dafi:class/siege/raycast/fire

## ACTIONBAR
execute if score @s spyglass matches 0 if score @s spyglassCheck matches 1 run title @s actionbar {"text":"■■■■■■■■■■","color":"dark_red"}
execute if score @s spyglass matches 2 run title @s actionbar ["",{"text":"■","color":"red"},{"text":"■■■■■■■■■","color":"dark_red"}]
execute if score @s spyglass matches 4 run title @s actionbar ["",{"text":"■■","color":"red"},{"text":"■■■■■■■■","color":"dark_red"}]
execute if score @s spyglass matches 6 run title @s actionbar ["",{"text":"■■■","color":"gold"},{"text":"■■■■■■■","color":"dark_red"}]
execute if score @s spyglass matches 8 run title @s actionbar ["",{"text":"■■■■","color":"gold"},{"text":"■■■■■■","color":"dark_red"}]
execute if score @s spyglass matches 10 run title @s actionbar ["",{"text":"■■■■■","color":"gold"},{"text":"■■■■■","color":"dark_red"}]
execute if score @s spyglass matches 12 run title @s actionbar ["",{"text":"■■■■■■","color":"yellow"},{"text":"■■■■","color":"dark_red"}]
execute if score @s spyglass matches 14 run title @s actionbar ["",{"text":"■■■■■■■","color":"yellow"},{"text":"■■■","color":"dark_red"}]
execute if score @s spyglass matches 16 run title @s actionbar ["",{"text":"■■■■■■■■","color":"yellow"},{"text":"■■","color":"dark_red"}]
execute if score @s spyglass matches 18 run title @s actionbar ["",{"text":"■■■■■■■■■","color":"dark_green"},{"text":"■","color":"dark_red"}]
execute if score @s spyglass matches 20.. run title @s actionbar {"text":"■■■■■■■■■■","color":"dark_green"}
execute if score @s spyglass matches 1.. if score @s spyglassCheck matches 0 run title @s actionbar ""

## SOUND # maybe also mod function this
# execute if score @s spyglass matches 40 run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1 

## ADVANCEMENT
scoreboard players add @s[scores={spyglassCheck=1}] spyglass 1
scoreboard players set @s[scores={spyglassCheck=0,spyglass=1..}] spyglass 0
scoreboard players set @s[scores={spyglassCheck=1}] spyglassCheck 0

## SCOREBOARD
scoreboard players set @s dropSpyglass 0
## DEATHCHECK
# to do
