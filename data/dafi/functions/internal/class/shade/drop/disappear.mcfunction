##> dafi:internal/class/shade/drop/disappear
# Creates a ring of smoke particles with horizontal trajectory
#
# callers:
# > dafi:internal/class/shade/main
##############################################################################

# Necessary Tags
tag @s add dafi.dash.exempt

# Gives invisibility and speed
effect give @s invisibility 10 0 true
effect give @s speed 10 4 true

# Clears player of items
scoreboard players set @s dafi.offhandReady 0
clear @s

# Applies motion 
tp @s @s
tag @s add dafi.slide.exempt
tag @s add dafi.dash_reset.exempt

scoreboard players set @s delta.addition.magnitude 2600
execute at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
scoreboard players set @s delta.addition.magnitude -12000
execute at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion

# VFX and SFX
tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Drop","color":"white"},{"text":")","color":"#33ffff"}]


playsound minecraft:entity.ender_dragon.shoot master @s ~ ~100 ~ 1000 0.8
playsound block.fire.extinguish master @s ~ ~ ~ 1 1
playsound entity.splash_potion.break master @s ~ ~ ~ 1 2
playsound entity.firework_rocket.twinkle master @s ~ ~ ~ 1 0.8

function dafi:internal/class/shade/drop/disappear_particle
particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.05 10 normal
particle witch ~ ~ ~ 0 0 0 0.5 50 normal