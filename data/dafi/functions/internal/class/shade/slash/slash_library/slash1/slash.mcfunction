scoreboard players add @s dafi.shade.slash.lifetime 1
execute if score @s dafi.shade.slash.lifetime matches 1 positioned ~ ~1.62 ~ run function dafi:internal/class/shade/slash/slash_library/slash1/frame_1
execute if score @s dafi.shade.slash.lifetime matches 1 run function dafi:internal/class/shade/slash/slash_library/slash_light

execute if score @s dafi.shade.slash.lifetime matches 2 positioned ~ ~1.62 ~ run function dafi:internal/class/shade/slash/slash_library/slash1/frame_2
execute if score @s dafi.shade.slash.lifetime matches 3 positioned ~ ~1.62 ~ run function dafi:internal/class/shade/slash/slash_library/slash1/frame_3
execute if score @s dafi.shade.slash.lifetime matches 3 run kill @s