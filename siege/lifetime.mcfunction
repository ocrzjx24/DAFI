execute as @e[type=item, tag=blood] run scoreboard players add @s redstoneLife 1
execute as @e[type=item, tag=blood, scores={redstoneLife=10..}] run kill @s 