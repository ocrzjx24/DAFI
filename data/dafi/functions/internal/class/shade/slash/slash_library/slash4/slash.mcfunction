
execute if score @s dafi.shade.slash.lifetime matches 3 positioned ~ ~1 ~ rotated ~-120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
execute if score @s dafi.shade.slash.lifetime matches 3 positioned ~ ~1 ~ rotated ~-120 0 run function dafi:internal/class/shade/drop/disappear_particle
#execute if score @s dafi.shade.slash.lifetime matches 1 rotated ~180 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
execute if score @s dafi.shade.slash.lifetime matches 3 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 3 rotated ~-120 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7


execute if score @s dafi.shade.slash.lifetime matches 4 positioned ~ ~1 ~ rotated ~-60 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 2 rotated ~-120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 2 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 4 rotated ~-60 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 5 positioned ~ ~1 ~ rotated ~0 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 3 rotated ~-60 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
execute if score @s dafi.shade.slash.lifetime matches 5 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 5 positioned ~ ~1 ~ rotated ~0 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 6 positioned ~ ~1 ~ rotated ~60 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 4 rotated ~0 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 4 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 6 rotated ~60 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 7 positioned ~ ~1 ~ rotated ~120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 5 rotated ~60 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
execute if score @s dafi.shade.slash.lifetime matches 7 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 7 rotated ~120 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 8 positioned ~ ~1 ~ rotated ~180 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 6 rotated ~120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 6 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 8 rotated ~180 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 9 positioned ~ ~1 ~ rotated ~-120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 7 rotated ~180 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
execute if score @s dafi.shade.slash.lifetime matches 9 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 9 rotated ~-120 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 10 positioned ~ ~1 ~ rotated ~-60 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 8 rotated ~-120 0 run function dafi:internal/class/shade/slash/slash_library/slash4/frame_1
#execute if score @s dafi.shade.slash.lifetime matches 8 run function dafi:internal/class/shade/slash/slash_library/slash_heavy
execute if score @s dafi.shade.slash.lifetime matches 10 rotated ~-60 0 positioned ^ ^ ^5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.7

execute if score @s dafi.shade.slash.lifetime matches 10 run kill @s
scoreboard players add @s dafi.shade.slash.lifetime 1