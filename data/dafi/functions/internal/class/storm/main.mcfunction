## function dafi:internal/class/storm/main
#
# 

# alt ability
execute if score @s dafi.storm.useTrident matches 1 run tag @s remove dafi.storm.offhandReady
#particle
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^6 run function dafi:internal/class/storm/particle/particle1
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^6.5 run function dafi:internal/class/storm/particle/particle2
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^8 run function dafi:internal/class/storm/particle/particle3
#sbsid
execute if score @s dafi.storm.useTrident matches 1 run scoreboard players add .global dafi.sbsid 1
execute if score @s dafi.storm.useTrident matches 1 run scoreboard players operation @s dafi.sbsid = .global dafi.sbsid
execute if score @s dafi.storm.useTrident matches 1 run scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid
#assign trident
execute if score @s dafi.storm.useTrident matches 1 at @s run scoreboard players operation @e[type=trident,tag=!dafi.storm.tridentprocessed,sort=nearest,limit=1] dafi.sbsid = #temp dafi.sbsid
execute if score @s dafi.storm.useTrident matches 1 at @s run tag @e[type=trident,tag=!dafi.storm.tridentprocessed,sort=nearest,limit=1] add dafi.storm.tridentprocessed
#execute if score @s dafi.storm.useTrident matches 1 at @s run tag @e[type=trident,tag=!dafi.storm.tridentprocessed,sort=nearest,limit=1] add dafi.storm.tridentred
#execute if score @s dafi.storm.useTrident matches 1 at @s run tag @e[type=trident,tag=!dafi.storm.tridentprocessed,sort=nearest,limit=1] add dafi.storm.tridentblue
#execute if score @s dafi.storm.useTrident matches 1 at @s run tag @e[type=trident,tag=!dafi.storm.tridentprocessed,sort=nearest,limit=1] add dafi.storm.tridentffa
#visual
execute if score @s dafi.storm.useTrident matches 71 run tellraw @s {"text":"\u2605 THE STORM CALLS... \u2605","bold":true,"color":"aqua"}
execute if score @s dafi.storm.useTrident matches 71 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.storm.useTrident matches 71 at @s run playsound minecraft:item.trident.return master @s ~ ~100000000 ~ 100000000 1 

#tags
execute if score @s dafi.storm.useTrident matches 71 run tag @s add dafi.storm.offhandReady
execute if score @s dafi.storm.useTrident matches 71 run tag @s remove dafi.storm.offhandProcessed
#iterate & reset
execute if score @s dafi.storm.useTrident matches 71.. run scoreboard players reset @s dafi.storm.useTrident
execute if entity @s[tag=!dafi.storm.launched] if score @s dafi.storm.useTrident matches 1.. run scoreboard players add @s dafi.storm.useTrident 1
execute if score @s dafi.storm.useTrident matches 1.. run clear @s minecraft:trident

# launched
execute if entity @s[tag=dafi.storm.launched] at @s run particle minecraft:nautilus ~ ~ ~ 0 0.1 0 0.1 1 force
execute if entity @s[tag=dafi.storm.launched,tag=!dafi.storm.usedslam] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.2 0.1 0.05 1 force
execute if entity @s[tag=dafi.storm.launched,tag=dafi.storm.usedslam] at @s run particle minecraft:squid_ink ~ ~ ~ 0.1 0.2 0.1 0.05 1 force
#slam
execute if entity @s[tag=dafi.storm.launched,tag=!dafi.storm.sneaklaunch,tag=!dafi.storm.usedslam] if predicate dafi:is_sneaking run function dafi:internal/class/storm/slam
execute if entity @s[tag=dafi.storm.launched,tag=dafi.storm.sneaklaunch] unless predicate dafi:is_sneaking run tag @s remove dafi.storm.sneaklaunch
execute if entity @s[tag=dafi.storm.launched,nbt={OnGround:1b}] at @s run function dafi:internal/class/storm/land

# offhand
function dafi:internal/class/storm/offhand

# deathcheck
execute if score @s dafi.deathcheck matches 1.. run function dafi:internal/class/storm/death
scoreboard players set @s[scores={dafi.deathcheck=1..}] dafi.storm.useTrident 71

# sbsid
scoreboard players reset #temp dafi.sbsid
