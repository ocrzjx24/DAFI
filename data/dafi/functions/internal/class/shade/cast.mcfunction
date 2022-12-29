##> dafi:internal/class/shade/cast
# casts shade's raycast
#
# callers:
# > ?

# CAST
execute as @e[scores={dafi.shade.swordLife=1..}] at @s run tp @s ^ ^ ^3
execute as @e[scores={dafi.shade.swordLife=1..}] at @s anchored eyes run function dafi:internal/class/shade/castparticle
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.blueSword] run tag @e[distance=..3,team=!blue,tag=!dafi.shade.swordCast] add dafi.shade.hit.marked
execute at @e[scores={dafi.shade.swordLife=1..},tag=dafi.shade.redSword] run tag @e[distance=..3,team=!red,tag=!dafi.shade.swordCast] add dafi.shade.hit.marked


# MARKED

kill @e[scores={dafi.shade.swordLife=5..}]
scoreboard players add @e[type=minecraft:marker,tag=dafi.shade.swordCast] dafi.shade.swordLife 1


