# execute if score @s dafi.sting.spectral matches 1.. run effect give @a[team=blue, distance =..1.5] instant_damage 1 0 true
execute if score @s dafi.sting.spectral matches 1.. as @e[distance=..1.5, team=!blue] as @e[tag=dafi.sting.processing, limit=1] run damage @e[distance=..1.5, team=!blue] 6 on_fire by @e[tag=dafi.sting.processing, limit=1]
execute if score @s dafi.sting.spectral matches 1.. positioned ~ ~1.5 ~ run effect give @a[team=blue, distance =..1.2] instant_damage 1 0 true

execute if score @s dafi.sting.spectral matches 1.. run scoreboard players set @a[distance=..1.5, team=!blue] dafi.slow.check 1
execute if score @s dafi.sting.spectral matches 1.. positioned ~ ~1.5 ~ run scoreboard players set @a[distance=..1.5, team=!blue] dafi.slow.check 1

execute if score @s dafi.sting.spectral matches 1.. run particle dust 0.145 0.588 0.929 1.5 ~ ~ ~ 0.5 0.2 0.5 0.2 1 force
execute if score @s dafi.sting.spectral matches 1.. run particle dust 0.396 1 0.898 1 ~ ~ ~ 0.7 0.4 0.7 0.5 1 force
execute if score @s dafi.sting.spectral matches 1.. run particle dust 0.145 0.588 0.929 1.5 ~ ~ ~ 0.2 1.4 0.2 0.2 1 force
execute if score @s dafi.sting.spectral matches 1.. run particle dust 0.396 1 0.898 1 ~ ~ ~ 0.2 1.4 0.2 0.5 1 force

# execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 1 run playsound minecraft:block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 2 1
# execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 6 run function dafi:internal/class/sting/molotov/bluespread1 
# execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 12 run function dafi:internal/class/sting/molotov/bluespread2 

execute if entity @s[type=armor_stand, nbt={OnGround:1b}] run data modify entity @s Marker set value 1b
tag @s remove dafi.sting.processing