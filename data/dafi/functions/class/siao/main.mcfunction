execute at @s[tag=plungeOK] unless block ~ ~-1 ~ #dafi:air unless block ~ ~-2 ~ #dafi:air unless block ~ ~-3 ~ #dafi:air run tag @s[] remove plungeOK
tag @s[tag=eyeProcessed,tag=!plungeOK] remove eyeProcessed
execute at @s[tag=!plungeOK] if block ~ ~-1 ~ #dafi:air if block ~ ~-2 ~ #dafi:air if block ~ ~-3 ~ #dafi:air run tag @s add plungeOK
clear @s[tag=!plungeOK] ender_eye
execute unless data entity @s Inventory[{Slot:-106b}].tag.mainhand run item replace entity @s[tag=plungeOK,tag=!eyeProcessed] weapon.offhand with ender_eye{plunge:1}
execute unless data entity @s Inventory[{Slot:-106b}].tag.mainhand run tag @s[tag=plungeOK,tag=!eyeProcessed] add eyeProcessed

execute as @s[tag=isPlunging] run function dafi:class/siao/plunge_delta

execute unless score @s baneOfAllEvil matches 1.. if score @s dropBamboo matches 1 run scoreboard players set @s baneOfAllEvil 1
execute if score @s dropBamboo matches 1.. run scoreboard players reset @s dropBamboo
execute if score @s baneOfAllEvil matches 1 run playsound minecraft:entity.zombie_villager.cure master @s ~ ~100 ~ 100 1 1
execute if score @s baneOfAllEvil matches 1 run effect give @s jump_boost 5 5 true
execute as @s[advancements={dafi:eye=true}] run function dafi:class/siao/plunge
execute as @s[tag=isPlunging,nbt={OnGround:1b}] at @s run function dafi:class/siao/aoe

execute if score @s lwcLife matches 6.. run effect clear @s slow_falling
execute if score @s lwcLife matches 6.. run effect clear @s levitation
execute if score @s lwcLife matches 6.. run tag @s remove lwc
execute if score @s lwcLife matches 6.. run scoreboard players reset @s lwcLife
execute if score @s lwcLife matches 1.. at @s[team=blue] run effect give @e[distance=..2.5,team=!blue] instant_damage 1 0 true
execute if score @s lwcLife matches 1.. at @s[team=red] run effect give @e[distance=..2.5,team=!red] instant_damage 1 0 true 
execute if score @s lwcLife matches 1.. at @s run particle glow_squid_ink ~ ~1 ~ 0 0 0 0 1
execute if score @s lwcLife matches 1.. run scoreboard players add @s lwcLife 1

execute if score @s lwcCharges matches ..2 run scoreboard players add @s lwcCD 1
execute if score @s lwcCD matches 60.. run scoreboard players add @s lwcCharges 1
execute if score @s lwcCD matches 60.. run scoreboard players reset @s lwcCD

execute if score @s baneOfAllEvil matches 220 run tellraw @s ["",{"text":"[⚔] ","color":"dark_green"},{"text":"DROP ready!","color":"green"}]
execute if score @s baneOfAllEvil matches 220.. run scoreboard players reset @s baneOfAllEvil
execute if score @s baneOfAllEvil matches 1.. run scoreboard players add @s baneOfAllEvil 1