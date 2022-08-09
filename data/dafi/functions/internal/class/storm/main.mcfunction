## MAIN ABILITY
#item replace entity @s[scores={dafi.storm.dropDiamondAxe=180..}] hotbar.1 with minecraft:diamond_axe{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{id:"channeling",lvl:1},{id:"sharpness",lvl:2}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
#clear @s[scores={dafi.storm.dropDiamondAxe=180..}] nautilus_shell
#item replace entity @s[scores={dafi.storm.dropDiamondAxe=1}] hotbar.1 with minecraft:nautilus_shell
#title @s[scores={dafi.storm.dropDiamondAxe=1}] actionbar {"text":"POWER OVERFLOWING","bold":true,"color":"aqua"}
#title @s[scores={dafi.storm.dropDiamondAxe=1..220,dafi.storm.useTrident=1..}] actionbar {"text":"OVERLOAD","bold":true,"color":"blue"}
#execute as @s[scores={dafi.storm.dropDiamondAxe=1..60}] at @s unless block ~ ~-0.1 ~ minecraft:air run fill ~ ~0.25 ~ ~ ~0.25 ~ water[level=7] replace minecraft:air
#execute as @s[scores={dafi.storm.dropDiamondAxe=1..60}] at @s if block ~ ~-0.1 ~ #minecraft:slabs run fill ~ ~0.75 ~ ~ ~0.75 ~ water[level=7] replace minecraft:air
#execute as @s[scores={dafi.storm.dropDiamondAxe=1..60}] at @s unless block ~ ~-0.1 ~ minecraft:air run fill ~ ~0.25 ~ ~ ~0.25 ~ water[level=7] replace water[level=7]
#title @s[scores={dafi.storm.dropDiamondAxe=180}] actionbar {"text":"\u2605 THE OCEAN CALLS... \u2605","bold":true,"color":"aqua"}
#execute at @s[scores={dafi.storm.dropDiamondAxe=180}] run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..10] ~ ~ ~ 100 0.4 1
#execute at @s[scores={dafi.storm.dropDiamondAxe=2}] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 100 1 1
#execute at @s[scores={dafi.storm.dropDiamondAxe=1..180,dafi.storm.useTrident=1..}] run playsound minecraft:entity.skeleton.hurt master @a[distance=..10] ~ ~ ~ 100 0.7 1
#execute at @s[scores={dafi.storm.dropDiamondAxe=60}] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 100 0.7 1
#execute at @s[scores={dafi.storm.dropDiamondAxe=1..219}] run particle minecraft:splash ~ ~0.4 ~ 0.3 0 0.3 0.01 5 normal
#scoreboard players reset @s[scores={dafi.storm.dropDiamondAxe=180..}] dafi.storm.dropDiamondAxe
#scoreboard players add @s[scores={dafi.storm.dropDiamondAxe=1..}] dafi.storm.dropDiamondAxe 1
#execute at @s[scores={dafi.storm.useTrident=1..}] run scoreboard players reset @s dafi.storm.useTrident

## ALT ABILITY
#execute at @s[scores={dafi.storm.dropShell=1}] run function dafi:class/storm/drop
#execute at @s[scores={dafi.storm.dropShell=20}] run function dafi:class/storm/shell1
#execute at @s[scores={dafi.storm.dropShell=30}] run function dafi:class/storm/shell2
#execute at @s[scores={dafi.storm.dropShell=40}] run function dafi:class/storm/shell3
# increment / reset
#scoreboard players reset @s[scores={dafi.storm.dropShell=40..}] dafi.storm.dropShell
#scoreboard players add @s[scores={dafi.storm.dropShell=1..}] dafi.storm.dropShell 1
execute if score @s dafi.storm.useTrident matches 1 run scoreboard players reset @s dafi.offhandReady
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^6 run function dafi:internal/class/storm/particle/particle1
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^6.5 run function dafi:internal/class/storm/particle/particle2
execute if score @s dafi.storm.useTrident matches 1 at @s anchored eyes positioned ^ ^ ^8 run function dafi:internal/class/storm/particle/particle3
execute if score @s dafi.storm.useTrident matches 4 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.storm.useTrident matches 4 run scoreboard players set @s dafi.offhandReady 1
execute if score @s dafi.storm.useTrident matches 4 run tag @s remove dafi.offhandProcessed
# execute if score @s dafi.storm.useTrident matches 4 at @s run playsound minecraft:item.trident.return master @s ~ ~100000000 ~ 100000000 1 
execute if score @s dafi.storm.useTrident matches 4.. run scoreboard players reset @s dafi.storm.useTrident
execute if score @s dafi.storm.useTrident matches 1.. run scoreboard players add @s dafi.storm.useTrident 1
execute if score @s dafi.storm.useTrident matches 1..4 run clear @s minecraft:trident

## NEW ABILITY
execute if score @s dafi.storm.dropDiamondAxe matches 120.. run item replace entity @s hotbar.1 with minecraft:diamond_axe{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{id:"channeling",lvl:1},{id:"sharpness",lvl:2}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
execute if score @s dafi.storm.dropDiamondAxe matches 1 run tag @s add dafi.storm.strike
execute if score @s dafi.storm.dropDiamondAxe matches 1 at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~100 ~ 100 2
execute if score @s dafi.storm.dropDiamondAxe matches 1 run clear @s crossbow{display:{Name:"[{\"text\":\"JSN \",\"italic\":false,\"color\":\"yellow\",\"bold\":true},{\"text\":\"X13\",\"italic\":false,\"bold\":true,\"color\":\"gold\"}]",Lore:["[{\"text\":\"death.attack.firework.item\",\"italic\":false,\"color\":\"dark_green\"}]"]},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1}
execute if score @s dafi.storm.dropDiamondAxe matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:"[{\"text\":\"JSN \",\"italic\":false,\"color\":\"yellow\",\"bold\":true},{\"text\":\"X13\",\"italic\":false,\"bold\":true,\"color\":\"gold\"}]",Lore:["[{\"text\":\"death.attack.firework.item\",\"italic\":false,\"color\":\"dark_green\"}]"]},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1}
execute if score @s dafi.storm.dropDiamondAxe matches 1 run scoreboard players reset @s dafi.storm.useTrident
# execute if score @s dafi.storm.dropDiamondAxe matches 1..60 run scoreboard players set @s CD 2
execute if score @s dafi.storm.dropDiamondAxe matches 1 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.storm.dropDiamondAxe matches 1 run scoreboard players set @s dafi.offhandReady 1
execute if score @s dafi.storm.dropDiamondAxe matches 1 run tag @s remove dafi.offhandProcessed

execute if score @s dafi.storm.dropDiamondAxe matches 1 run effect give @s minecraft:speed 3 2
execute if score @s[tag=!dafi.storm.garden] dafi.storm.dropDiamondAxe matches 1..60 at @s run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 1 force
execute if score @s[tag=!dafi.storm.garden] dafi.storm.dropDiamondAxe matches 1..60 at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.1 5 force
execute if score @s dafi.storm.dropDiamondAxe matches 60 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~100000000 ~ 100000000 0.7 1
execute if score @s dafi.storm.dropDiamondAxe matches 60 run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~100000000 ~ 100000000 2
execute if score @s[team=red] dafi.storm.dropDiamondAxe matches 60 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score @s[team=blue] dafi.storm.dropDiamondAxe matches 60 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score @s dafi.storm.dropDiamondAxe matches 60.. run tag @s remove dafi.storm.strike
execute if score @s dafi.storm.dropDiamondAxe matches 120 run tellraw @s {"text":"\u2605 THE STORM CALLS... \u2605","bold":true,"color":"aqua"}
execute if score @s dafi.storm.dropDiamondAxe matches 120 at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..10] ~ ~100000000 ~ 100000000 0.4 1

execute if score @s dafi.storm.dropDiamondShovel matches 1 run scoreboard players set @s delta.addition.magnitude 12500
execute if score @s dafi.storm.dropDiamondShovel matches 1 at @s rotated 0 90 run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
execute if score @s dafi.storm.dropDiamondShovel matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}}]
execute if score @s dafi.storm.dropDiamondShovel matches 1.. run scoreboard players reset @s dafi.storm.dropDiamondShovel

## ITERATION AND RESET
execute if score @s dafi.storm.dropDiamondAxe matches 120 run scoreboard players reset @s dafi.storm.dropDiamondAxe
execute if score @s[tag=!dafi.storm.garden] dafi.storm.dropDiamondAxe matches 1.. run scoreboard players add @s dafi.storm.dropDiamondAxe 1

## MARKET GARDENER TIME BITCH!!!!!!!!!!!!!!!
execute if entity @s[tag=dafi.storm.garden] run function dafi:internal/class/storm/garden
execute if score @s dafi.storm.shovel matches 120.. run scoreboard players set @s dafi.storm.shovel 0


## TARGET TRIDENT
# execute as @e[type=trident] run data modify entity @s NoGravity set value true
# execute as @e[type=trident] run data modify entity @s DealtDamage set value 0
execute as @e[type=trident,nbt={inGround:1b}] run function dafi:internal/class/storm/strike


## WATER
# execute as @s[tag=dafi.storm.water] run function dafi:class/storm/water

## OFFHAND READY
function dafi:internal/class/storm/offhand

## DEATHCHECK
scoreboard players set @s[scores={deathCheck=1..,dafi.storm.dropDiamondAxe=1..}] dafi.storm.dropDiamondAxe 119

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}]
#kill @e[type=item,nbt={Item:{id:"minecraft:nautilus_shell"}}]