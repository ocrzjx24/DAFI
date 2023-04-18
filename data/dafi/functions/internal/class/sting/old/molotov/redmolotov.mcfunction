# execute if score @s dafi.sting.spectral matches 1.. as @e[distance=..1.5, team=!red] run damage @s 6.0
execute if score @s dafi.sting.spectral matches 1.. run scoreboard players set @a[distance=..1.5, team=!red] dafi.slow.check 1
execute if score @s dafi.sting.spectral matches 1.. run particle dust 1 0.22 0.098 1.5 ~ ~ ~ 0.5 0.1 0.5 0.2 1 force
execute if score @s dafi.sting.spectral matches 1.. run particle dust 1 0.557 0.141 1 ~ ~ ~ 0.7 0.2 0.7 0.5 1 force

execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 1 run playsound minecraft:block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 2 1
execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 6 run function dafi:internal/class/sting/molotov/redspread1 
execute if score @s[tag=dafi.sting.centerMolotov] dafi.sting.spectral matches 12 run function dafi:internal/class/sting/molotov/redspread2 

execute if entity @s[type=armor_stand, nbt={OnGround:1b}] run data modify entity @s Marker set value 1b