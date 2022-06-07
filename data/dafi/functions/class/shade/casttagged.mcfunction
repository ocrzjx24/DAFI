# HUNTED
scoreboard players add @s castTagged 1
execute at @s[tag=castTagged,team=!blue] run particle minecraft:falling_lava ~ ~ ~ 0.1 0.1 0.1 1 10 force @a[tag=shade,team=blue]
execute at @s[tag=castTagged,team=!red] run particle minecraft:falling_lava ~ ~ ~ 0.1 0.1 0.1 1 10 force @a[tag=shade,team=red]
tag @s[scores={castTagged=100..}] remove castTagged
scoreboard players set @s[scores={castTagged=100..}] castTagged 0

# SWAMP YOU BETTER RUN
title @s[tag=castTagged] actionbar {"text":"! MARKED !","bold":true,"color":"dark_red"}

#HUNTED DEATHCHECK
scoreboard players set @s[scores={deathcheck=1..,castTagged=1..}] castTagged 99