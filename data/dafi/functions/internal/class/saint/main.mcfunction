##> dafi:internal/class/saint/main
# main function for saint
#
# callers:
# > dafi:internal/class/main

# UPDRAFT
execute if score @s dafi.saint.dropFeather matches 1 unless score @s dafi.saint.drop.cooldown matches 1.. run scoreboard players set @s dafi.saint.drop.cooldown 1
execute if score @s dafi.saint.drop.cooldown matches 1 at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1
execute if score @s dafi.saint.drop.cooldown matches 1..10 at @s anchored eyes run particle snowflake ^ ^ ^1 0 0 0 0.1 3

execute if score @s dafi.saint.drop.cooldown matches 10 at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1.2
execute if score @s dafi.saint.drop.cooldown matches 10 at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.5
execute if score @s dafi.saint.drop.cooldown matches 10 run tag @s add dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 10 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle2
execute if score @s dafi.saint.drop.cooldown matches 10 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle3
execute if score @s dafi.saint.drop.cooldown matches 10 at @s run function dafi:internal/class/saint/raycast/fire
execute if score @s dafi.saint.drop.cooldown matches 10 run tag @s remove dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 10 run tag @s remove dafi.saint.this

execute if score @s dafi.saint.drop.cooldown matches 20 at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1.2
execute if score @s dafi.saint.drop.cooldown matches 20 at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.5
execute if score @s dafi.saint.drop.cooldown matches 20 run tag @s add dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 20 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle2
execute if score @s dafi.saint.drop.cooldown matches 20 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle3
execute if score @s dafi.saint.drop.cooldown matches 20 at @s run function dafi:internal/class/saint/raycast/fire
execute if score @s dafi.saint.drop.cooldown matches 20 run tag @s remove dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 20 run tag @s remove dafi.saint.this

execute if score @s dafi.saint.drop.cooldown matches 30 at @s run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 1.2
execute if score @s dafi.saint.drop.cooldown matches 30 at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.5
execute if score @s dafi.saint.drop.cooldown matches 30 run tag @s add dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 30 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle2
execute if score @s dafi.saint.drop.cooldown matches 30 as @s at @s anchored eyes positioned ^ ^ ^1 run function dafi:internal/class/saint/particle3
execute if score @s dafi.saint.drop.cooldown matches 30 at @s run function dafi:internal/class/saint/raycast/fire
execute if score @s dafi.saint.drop.cooldown matches 30 run tag @s remove dafi.saint.summon.this
execute if score @s dafi.saint.drop.cooldown matches 30 run tag @s remove dafi.saint.this
#execute if score @s feather matches 20 run item replace entity @s armor.chest with elytra{Unbreakable:1,HideFlags:4} 1
#execute if score @s feather matches 62.. run clear @s minecraft:elytra
#execute if score @s dafi.saint.drop.cooldown matches 1..25 at @s positioned ~ ~2.2 ~ run function dafi:internal/class/saint/particle2
#execute if score @s feather matches 100.. run clear @s minecraft:elytra

# increment/reset
execute if score @s dafi.saint.drop.cooldown matches 80.. run scoreboard players reset @s dafi.saint.drop.cooldown
execute if score @s dafi.saint.drop.cooldown matches 1.. run scoreboard players add @s dafi.saint.drop.cooldown 1
execute if score @s dafi.saint.dropFeather matches 1 run scoreboard players reset @s dafi.saint.dropFeather

# swap cooldown
execute if score @s dafi.saint.swap.cooldown matches 120.. run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]

execute if score @s dafi.saint.swap.cooldown matches 120.. run scoreboard players reset @s dafi.saint.swap.cooldown
execute if score @s dafi.saint.swap.cooldown matches 2.. run scoreboard players add @s dafi.saint.swap.cooldown 1
# PASSIVE
execute at @s run function dafi:internal/class/saint/sneak

# HITBOX INCREASE
#execute if score @s feather matches 1..100 at @s run function dafi:class/saint/hitbox

# PARTICLES
#execute at @s run particle minecraft:enchant ~ ~0.2 ~ 0.4 0.1 0.4 0.001 1 normal

# TEXT
#execute if score @s feather matches 199 run title @s actionbar {"text":"\u2605 PREPARE TO ASCEND \u2605","bold":true}

# SOUND
execute if score @s dafi.saint.drop.cooldown matches 79 at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..10] ~ ~1000 ~ 1000 2

# KILL

# DEATHCHECK
execute if score @s dafi.saint.drop.cooldown matches 1.. if score @s dafi.deathcheck matches 1.. run execute if entity @s run scoreboard players set @s dafi.saint.drop.cooldown 80

