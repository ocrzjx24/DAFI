execute at @s[tag=plungeOK] unless block ~ ~-1 ~ #dafi:air unless block ~ ~-2 ~ #dafi:air unless block ~ ~-3 ~ #dafi:air run tag @s[] remove plungeOK
tag @s[tag=eyeProcessed,tag=!plungeOK] remove eyeProcessed
execute at @s[tag=!plungeOK] if block ~ ~-1 ~ #dafi:air if block ~ ~-2 ~ #dafi:air if block ~ ~-3 ~ #dafi:air run tag @s add plungeOK
clear @s[tag=!plungeOK] ender_eye
item replace entity @s[tag=plungeOK,tag=!eyeProcessed] weapon.offhand with ender_eye{plunge:1}
tag @s[tag=plungeOK,tag=!eyeProcessed] add eyeProcessed

execute unless score @s baneOfAllEvil matches 1.. if score @s dropBamboo matches 1 run scoreboard players set @s baneOfAllEvil 1
execute if score @s dropBamboo matches 1 run scoreboard players reset @s dropBamboo
execute if score @s baneOfAllEvil matches 1 run playsound minecraft:entity.zombie_villager.cure master @s ~ ~100 ~ 100 1 1
execute if score @s baneOfAllEvil matches 1 run effect give @s jump_boost 5 5 true
execute as @s[advancements={dafi:eye=true}] run function dafi:class/siao/plunge
execute as @s[tag=isPlunging,nbt={OnGround:1b}] at @s run function dafi:class/siao/aoe


execute if score @s baneOfAllEvil matches 220.. run scoreboard players reset @s baneOfAllEvil
execute if score @s baneOfAllEvil matches 1.. run scoreboard players add @s baneOfAllEvil 1