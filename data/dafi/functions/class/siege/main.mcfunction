tag @s add dafi.siege.main
## main function for players tagged with siege

# fishing rod garbage
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run say out of range
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @a[tag=dafi.siege.main] remove dafi.siege.fishing
execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run kill @s

# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run data modify entity @s Motion[0] set value 0.0
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run data modify entity @s Motion[1] set value 0.0
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run data modify entity @s Motion[2] set value 0.0
# execute at @s as @e[type=fishing_bobber,distance=30..] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run data merge entity @s {NoGravity:1b}

# execute at @s as @e[type=fishing_bobber,distance=..30] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run say in range
execute at @s as @e[type=fishing_bobber,distance=..30] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @s add dafi.siege.bobberinrange
# execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run say im going to bob
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] as @e[type=marker,tag=dafi.siege.bobbercheck] if score @s sbsid = @a[tag=dafi.siege.main,limit=1] sbsid run tag @s add dafi.siege.targetmarker
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players set $strength delta.api.launch 20000
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] facing entity @e[type=marker,tag=dafi.siege.targetmarker,limit=1] feet run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run scoreboard players reset $strength delta.api.launch
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run kill @e[type=marker,tag=dafi.siege.targetmarker]
execute at @s[tag=dafi.siege.fishing] unless entity @e[type=fishing_bobber,tag=dafi.siege.bobberinrange,distance=..30] run tag @s remove dafi.siege.fishing

# useFishingRod
execute if score @s useFishingRod matches 1.. run scoreboard players add .global sbsid 1
execute if score @s useFishingRod matches 1.. run execute store result score @s sbsid run scoreboard players get .global sbsid
execute if score @s useFishingRod matches 1.. run tag @s add dafi.siege.fishing
execute if score @s useFishingRod matches 1.. run scoreboard players reset @s useFishingRod

# useCrossbow
execute if score @s useCrossbow matches 1 if score @s siegeMode matches 1 run function dafi:class/siege/shotgun_recoil
execute if score @s useCrossbow matches 1.. run scoreboard players set @s useCrossbow 0

# shotgunCD
scoreboard players remove @s[scores={shotgunCD=1..}] shotgunCD 1
execute if score @s[scores={siegeMode=1}] shotgunCD matches 0 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"shotty ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:0,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
scoreboard players reset @s[scores={siegeMode=1,shotgunCD=0}] shotgunCD

tag @s remove dafi.siege.main