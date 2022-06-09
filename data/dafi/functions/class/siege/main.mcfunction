## DROPPED SHOT
execute at @s if score @s dropSpyglass matches 1 if score @s spyglassCheck matches 0 run function dafi:class/siege/drop

## CHARGED SHOT
execute at @s if score @s spyglass matches 1..20 if score @s spyglassCheck matches 0 run function dafi:class/siege/spark

# eye particles
execute anchored eyes at @s[team=red] if score @s spyglass matches 1.. if score @s spyglassCheck matches 1 run particle dust 1 0 0 1.5 ^-0.1 ^ ^1.1 0.02 0.02 0.02 0.1 1 force @a[team=!red]
execute anchored eyes at @s[team=blue] if score @s spyglass matches 1.. if score @s spyglassCheck matches 1 run particle dust 1 0 0 1.5 ^-0.1 ^ ^1.1 0.02 0.02 0.02 0.1 1 force @a[team=!blue]


execute at @s[team=red] if score @s spyglass matches 20.. if score @s spyglassCheck matches 0 run function dafi:class/siege/raycast/redfire
execute at @s[team=blue] if score @s spyglass matches 20.. if score @s spyglassCheck matches 0 run function dafi:class/siege/raycast/bluefire

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

## SCOREBOARD
scoreboard players add @s[scores={spyglassCheck=1}] spyglass 1
scoreboard players set @s[scores={spyglassCheck=0,spyglass=1..}] spyglass 0
scoreboard players set @s[scores={spyglassCheck=1}] spyglassCheck 0

## DROP SPYGLASS
scoreboard players add @s[scores={dropSpyglass=1..}] dropSpyglass 1
execute if score @s dropSpyglass matches 81.. run give @s minecraft:spyglass
scoreboard players set @s[scores={dropSpyglass=81..}] dropSpyglass 0

## DEATHCHECK
# to do

## KILL
kill @e[type=item, nbt={Item:{id:"minecraft:spyglass"}}]
