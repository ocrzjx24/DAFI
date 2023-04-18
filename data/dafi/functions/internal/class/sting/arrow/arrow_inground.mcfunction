# tag @s add dafi.arrow.sting.stuck
# summon minecraft:armor_stand ~ ~ ~ {Tags:["dafi.sting.blueMolotov","dafi.sting.centerMolotov"],Invisible:1b,Small:1b}

execute if entity @s[tag=dafi.arrow.blue, tag=dafi.sting.shell] at @s run summon marker ~ ~0.1 ~ {Tags:["dafi.sting.projectile.blue", "dafi.sting.fire", "dafi.sting.fire.processing"]}
execute if entity @s[tag=dafi.arrow.red, tag=dafi.sting.shell] at @s run summon marker ~ ~0.1 ~ {Tags:["dafi.sting.projectile.red", "dafi.sting.fire", "dafi.sting.fire.processing"]}
execute if entity @s[tag=dafi.arrow.ffa, tag=dafi.sting.shell] at @s run summon marker ~ ~0.1 ~ {Tags:["dafi.sting.projectile.ffa", "dafi.sting.fire", "dafi.sting.fire.processing"]}

scoreboard players operation @e[tag=dafi.sting.fire.processing, limit=1] dafi.sbsid = @s dafi.sbsid
tag @e[tag=dafi.sting.fire.processing, limit=1] remove dafi.sting.fire.processing

# execute store result score @s dafi.sbsid