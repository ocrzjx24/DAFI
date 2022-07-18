## main function for players tagged with siege
# runs every tick
tag @s add dafi.siege.main

#> fishing rod garbage
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run say out of range
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] at @s run playsound minecraft:block.chain.hit master @s ~ ~ ~ 1 1.5
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] run clear @s fishing_rod
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @a[tag=dafi.siege.main] remove dafi.siege.fishing
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run kill @s
execute at @s as @e[type=fishing_bobber,distance=..30] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @s add dafi.siege.bobberinrange

execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.bobbercheck] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @s add dafi.siege.targetmarker
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players set $strength delta.api.launch 10000
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] facing entity @e[type=marker,tag=dafi.siege.targetmarker,limit=1] feet run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players reset $strength delta.api.launch
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run kill @e[type=marker,tag=dafi.siege.targetmarker]
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run clear @s fishing_rod
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players set @s fishingRodCD 60
# execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run playsound minecraft:entity.fishing_bobber.throw master @s ~ ~ ~ 0.5 0.6 0.5
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run tag @s remove dafi.siege.fishing

#> dropIronPick
# pull nearby players (Q)
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking run scoreboard players set $strength delta.api.launch 10000
execute if score @s[team=red] dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s as @a[distance=..5,team=!red] at @s facing entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] eyes run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute if score @s[team=blue] dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s as @a[distance=..5,team=!blue] at @s facing entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] eyes run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking run scoreboard players reset $strength delta.api.launch
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run scoreboard players set @a[distance=..5] slow 20
# sound
execute if score @s[team=red] dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!red] ~ ~ ~ 1 0.75
execute if score @s[team=blue] dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] at @s run playsound minecraft:block.chain.break master @a[distance=..5,team=!blue] ~ ~ ~ 1 0.75
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking at @s run playsound minecraft:block.chain.break master @s ~ ~ ~ 1 1
# kill
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_not_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s
# sever fishing cable (DROP + Q)
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] at @s run playsound minecraft:block.chain.hit master @a[distance=..5] ~ ~ ~ 1 1.5
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] as @a[tag=dafi.siege.main] run clear @s fishing_rod
# kill
execute if score @s dropIronPickaxe matches 1.. if predicate dafi:is_sneaking as @e[type=fishing_bobber,tag=dafi.siege.bobberinrange] run kill @s

#> useFishingRod
execute if score @s useFishingRod matches 1.. run scoreboard players add .global sbsid 1
execute if score @s useFishingRod matches 1.. run execute store result score @s sbsid run scoreboard players get .global sbsid
execute if score @s useFishingRod matches 1.. run tag @s add dafi.siege.fishing

#> useCrossbow
execute if score @s useCrossbow matches 1 if score @s siegeMode matches 1 run function dafi:class/siege/shotgun_recoil

#> shotgunCD
scoreboard players remove @s[scores={shotgunCD=1..}] shotgunCD 1
execute if score @s[scores={siegeMode=1}] shotgunCD matches 0 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":".EXE","italic":false,"color":"gray","bold":true},{"text":"CUTIONER","italic":false,"bold":true,"color":"dark_gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
execute if score @s[scores={siegeMode=1}] shotgunCD matches 0 run scoreboard players set @s shotgunShots 2
execute if score @s[scores={siegeMode=1,shotgunShots=1}] shotgunCD matches 57 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":".EXE","italic":false,"color":"gray","bold":true},{"text":"CUTIONER","italic":false,"bold":true,"color":"dark_gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1

#> fishingRodCD
scoreboard players remove @s[scores={fishingRodCD=1..}] fishingRodCD 1
# execute if score @s fishingRodCD matches 0 run item replace entity @s weapon.offhand with fishing_rod

#> offhandCheck
function dafi:class/siege/offhand

#> fishing bypass scoreboard
execute if score @s dropIronPickaxe matches 1.. run scoreboard players reset @s dropIronPickaxe
execute if score @s useFishingRod matches 1.. run scoreboard players reset @s useFishingRod
execute if score @s useCrossbow matches 1.. run scoreboard players reset @s useCrossbow
scoreboard players reset @s[scores={siegeMode=1,shotgunCD=0}] shotgunCD
scoreboard players reset @s inventoryChangedFishingBypass
scoreboard players reset @s[scores={fishingRodCD=0}] fishingRodCD

#> main.mcfunction specific tags 
tag @e[tag=dafi.siege.bobberinrange] remove dafi.siege.bobberinrange
tag @s remove dafi.siege.main