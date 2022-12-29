## main function for players tagged with siege
# runs every tick
tag @s add dafi.siege.main

#> fishing rod garbage
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid run say out of range
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] at @s run playsound minecraft:block.chain.hit master @s ~ ~ ~ 1 1.5
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] run clear @s fishing_rod
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid run tag @a[tag=dafi.siege.main] remove dafi.siege.fishing
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid run kill @s
execute at @s as @e[type=fishing_bobber,distance=..30] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid run tag @s add dafi.siege.bobberinrange

execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.bobbercheck] if score @s dafi.sbsid = @a[tag=dafi.siege.main,limit=1] dafi.sbsid run tag @s add dafi.siege.targetmarker

execute if predicate dafi:is_not_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players set @s delta.addition.magnitude 15000
execute if predicate dafi:is_not_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] facing entity @e[type=marker,tag=dafi.siege.targetmarker,limit=1] feet run function dafi:internal/mechanics/addition/add_motion

scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid
execute if predicate dafi:is_sneaking at @s[team=red,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s run scoreboard players set @a[distance=..5,team=!red] delta.addition.magnitude 15000
execute if predicate dafi:is_sneaking at @s[team=blue,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s run scoreboard players set @a[distance=..5,team=!blue] delta.addition.magnitude 15000
execute if predicate dafi:is_sneaking at @s[team=ffa,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s as @a[distance=..5] unless score @s dafi.sbsid = #temp dafi.sbsid run scoreboard players set @s delta.addition.magnitude 15000

execute if predicate dafi:is_sneaking at @s[team=red,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s as @a[distance=..5,team=!red] at @s facing entity @e[type=marker,tag=dafi.siege.targetmarker] eyes run function dafi:internal/mechanics/addition/add_motion
execute if predicate dafi:is_sneaking at @s[team=blue,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s as @a[distance=..5,team=!blue] at @s facing entity @e[type=marker,tag=dafi.siege.targetmarker] eyes run function dafi:internal/mechanics/addition/add_motion
execute if predicate dafi:is_sneaking at @s[team=ffa,tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.targetmarker] at @s as @a[distance=..5] unless score @s dafi.sbsid = #temp dafi.sbsid at @s facing entity @e[type=marker,tag=dafi.siege.targetmarker] eyes run function dafi:internal/mechanics/addition/add_motion
scoreboard players reset #temp dafi.sbsid

execute if predicate dafi:is_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] at @s run scoreboard players set @a[distance=..5] dafi.mechanics.slow 20

execute if predicate dafi:is_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!red] ~ ~ ~ 1 0.75
execute if predicate dafi:is_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!blue] ~ ~ ~ 1 0.75
execute if predicate dafi:is_sneaking at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 1

execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run kill @e[type=marker,tag=dafi.siege.targetmarker]
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run clear @s fishing_rod
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players set @s dafi.siege.fishingRodCD 60
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run tag @s remove dafi.siege.fishing

#> dropIronPick
# pull nearby players (Q)
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking run scoreboard players set $strength delta.api.launch 10000
#execute if score @s[team=red] dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s as @a[distance=..5,team=!red] at @s facing entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] eyes run function dafi:mechanics/bigpapi_delta/api/launch_looking
#execute if score @s[team=blue] dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s as @a[distance=..5,team=!blue] at @s facing entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] eyes run function dafi:mechanics/bigpapi_delta/api/launch_looking
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking run scoreboard players reset $strength delta.api.launch
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run scoreboard players set @a[distance=..5] slow 20
# sound
#execute if score @s[team=red] dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!red] ~ ~ ~ 1 0.75
#execute if score @s[team=blue] dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!blue] ~ ~ ~ 1 0.75
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 1
# kill
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s
# sever fishing cable (DROP + Q)
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] at @s run playsound minecraft:block.chain.hit master @a[distance=..5] ~ ~ ~ 1 1.5
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] run clear @s fishing_rod
# kill
#execute if score @s dafi.siege.dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s

#> dafi.siege.useFishingRod
execute if score @s dafi.siege.useFishingRod matches 1.. run scoreboard players add .global dafi.sbsid 1
execute if score @s dafi.siege.useFishingRod matches 1.. run execute store result score @s dafi.sbsid run scoreboard players get .global dafi.sbsid
execute if score @s dafi.siege.useFishingRod matches 1.. run tag @s add dafi.siege.fishing

#> dafi.siege.useCrossbow
#execute if score @s dafi.siege.useCrossbow matches 1 if score @s dafi.siege.mode matches 1 run function dafi:internal/class/siege/shotgun_recoil

#> dafi.siege.shotgunCD
scoreboard players remove @s[scores={dafi.siege.shotgunCD=1..}] dafi.siege.shotgunCD 1
execute if score @s[scores={dafi.siege.mode=1}] dafi.siege.shotgunCD matches 0 run item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":".EXE","italic":false,"color":"gray","bold":true},{"text":"CUTIONER","italic":false,"bold":true,"color":"dark_gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
execute if score @s[scores={dafi.siege.mode=1}] dafi.siege.shotgunShots matches 0 run scoreboard players set @s dafi.siege.shotgunShots 30
execute if score @s[scores={dafi.siege.mode=1,dafi.siege.shotgunShots=1..}] dafi.siege.shotgunCD matches 0 run item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":".EXE","italic":false,"color":"gray","bold":true},{"text":"CUTIONER","italic":false,"bold":true,"color":"dark_gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,HideFlags:36} 1

#> dafi.siege.fishingRodCD
scoreboard players remove @s[scores={dafi.siege.fishingRodCD=1..}] dafi.siege.fishingRodCD 1
execute if score @s dafi.siege.fishingRodCD matches 0 run item replace entity @s hotbar.1 with fishing_rod{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"MEAT","italic":false,"color":"dark_red","bold":true},{"text":"HOOK","color":"dark_gray"}]',Lore:['[{"text":"ror2 reference","italic":false}]']},Enchantments:[{id:sharpness,lvl:5}],HideFlags:101} 1
#> offhandCheck
function dafi:internal/class/siege/offhand

#> fishing bypass scoreboard
# execute if score @s dafi.siege.dropIronPickaxe matches 1.. run scoreboard players reset @s dafi.siege.dropIronPickaxe
execute if score @s dafi.siege.useFishingRod matches 1.. run scoreboard players reset @s dafi.siege.useFishingRod
execute if score @s dafi.siege.useCrossbow matches 1.. run scoreboard players reset @s dafi.siege.useCrossbow
scoreboard players reset @s[scores={dafi.siege.mode=1,dafi.siege.shotgunCD=0}] dafi.siege.shotgunCD
scoreboard players reset @s dafi.siege.ICFB
scoreboard players reset @s[scores={dafi.siege.fishingRodCD=0}] dafi.siege.fishingRodCD

advancement revoke @s only dafi:inventory_changed

#> main.mcfunction specific tags 
tag @e[tag=dafi.siege.bobberinrange] remove dafi.siege.bobberinrange
tag @s remove dafi.siege.main