## MAIN ABILITY
#item replace entity @s[scores={dropWave=180..}] hotbar.1 with minecraft:diamond_axe{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{id:"channeling",lvl:1},{id:"sharpness",lvl:2}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
#clear @s[scores={dropWave=180..}] nautilus_shell
#item replace entity @s[scores={dropWave=1}] hotbar.1 with minecraft:nautilus_shell
#title @s[scores={dropWave=1}] actionbar {"text":"POWER OVERFLOWING","bold":true,"color":"aqua"}
#title @s[scores={dropWave=1..220,useTrident=1..}] actionbar {"text":"OVERLOAD","bold":true,"color":"blue"}
#execute as @s[scores={dropWave=1..60}] at @s unless block ~ ~-0.1 ~ minecraft:air run fill ~ ~0.25 ~ ~ ~0.25 ~ water[level=7] replace minecraft:air
#execute as @s[scores={dropWave=1..60}] at @s if block ~ ~-0.1 ~ #minecraft:slabs run fill ~ ~0.75 ~ ~ ~0.75 ~ water[level=7] replace minecraft:air
#execute as @s[scores={dropWave=1..60}] at @s unless block ~ ~-0.1 ~ minecraft:air run fill ~ ~0.25 ~ ~ ~0.25 ~ water[level=7] replace water[level=7]
#title @s[scores={dropWave=180}] actionbar {"text":"\u2605 THE OCEAN CALLS... \u2605","bold":true,"color":"aqua"}
#execute at @s[scores={dropWave=180}] run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..10] ~ ~ ~ 100 0.4 1
#execute at @s[scores={dropWave=2}] run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..10] ~ ~ ~ 100 1 1
#execute at @s[scores={dropWave=1..180,useTrident=1..}] run playsound minecraft:entity.skeleton.hurt master @a[distance=..10] ~ ~ ~ 100 0.7 1
#execute at @s[scores={dropWave=60}] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 100 0.7 1
#execute at @s[scores={dropWave=1..219}] run particle minecraft:splash ~ ~0.4 ~ 0.3 0 0.3 0.01 5 normal
#scoreboard players reset @s[scores={dropWave=180..}] dropWave
#scoreboard players add @s[scores={dropWave=1..}] dropWave 1
#execute at @s[scores={useTrident=1..}] run scoreboard players reset @s useTrident

## ALT ABILITY
#execute at @s[scores={dropShell=1}] run function dafi:class/storm/drop
#execute at @s[scores={dropShell=20}] run function dafi:class/storm/shell1
#execute at @s[scores={dropShell=30}] run function dafi:class/storm/shell2
#execute at @s[scores={dropShell=40}] run function dafi:class/storm/shell3
# increment / reset
#scoreboard players reset @s[scores={dropShell=40..}] dropShell
#scoreboard players add @s[scores={dropShell=1..}] dropShell 1

execute if score @s[team=red] useTrident matches 60 run item replace entity @s weapon.offhand with minecraft:trident{tred:1}
execute if score @s[team=blue] useTrident matches 60 run item replace entity @s weapon.offhand with minecraft:trident{tblue:1}
execute if score @s useTrident matches 60 at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1
execute if score @s useTrident matches 60.. run scoreboard players reset @s useTrident
execute if score @s useTrident matches 1.. run scoreboard players add @s useTrident 1
execute if score @s useTrident matches 1..60 run clear @s minecraft:trident

## NEW ABILITY
execute if score @s dropWave matches 120.. run item replace entity @s hotbar.1 with minecraft:diamond_axe{display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Enchantments:[{id:"channeling",lvl:1},{id:"sharpness",lvl:2}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
execute if score @s dropWave matches 1 run tag @s add strike
execute if score @s dropWave matches 1 at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~100 ~ 100 2
execute if score @s dropWave matches 1..30 run scoreboard players set @s CD 2
execute if score @s dropWave matches 1 run clear @s crossbow{display:{Name:"[{\"text\":\"JSN \",\"italic\":false,\"color\":\"yellow\",\"bold\":true},{\"text\":\"X13\",\"italic\":false,\"bold\":true,\"color\":\"gold\"}]",Lore:["[{\"text\":\"death.attack.firework.item\",\"italic\":false,\"color\":\"dark_green\"}]"]},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1}
execute if score @s dropWave matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:"[{\"text\":\"JSN \",\"italic\":false,\"color\":\"yellow\",\"bold\":true},{\"text\":\"X13\",\"italic\":false,\"bold\":true,\"color\":\"gold\"}]",Lore:["[{\"text\":\"death.attack.firework.item\",\"italic\":false,\"color\":\"dark_green\"}]"]},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1}
execute if score @s dropWave matches 1 run scoreboard players reset @s useTrident
execute if score @s[team=red] dropWave matches 1 run item replace entity @s weapon.offhand with minecraft:trident{tred:1}
execute if score @s[team=blue] dropWave matches 1 run item replace entity @s weapon.offhand with minecraft:trident{tblue:1}
execute if score @s dropWave matches 1 run effect give @s minecraft:speed 3 2
execute if score @s dropWave matches 1..60 at @s run particle minecraft:nautilus ~ ~ ~ 0 0 0 2 1 force
execute if score @s dropWave matches 1..60 at @s run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.1 5 force
execute if score @s dropWave matches 60 at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 100 0.7 1
execute if score @s dropWave matches 60.. run tag @s remove strike
execute if score @s dropWave matches 120 run title @s actionbar {"text":"\u2605 THE STORM CALLS... \u2605","bold":true,"color":"aqua"}
execute if score @s dropWave matches 120 at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a[distance=..10] ~ ~ ~ 100 0.4 1
execute if score @s dropWave matches 120 run scoreboard players reset @s dropWave
execute if score @s dropWave matches 1.. run scoreboard players add @s dropWave 1
execute as @e[type=trident,nbt={inGround:1b}] run function dafi:class/storm/strike

# effect clear @s minecraft:jump_boost
# execute as @s[tag=strike] if predicate dafi:is_sneaking run effect give @s minecraft:jump_boost 999999 5 true
# execute at @s[tag=strike] if predicate dafi:is_sneaking run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~-1 ~ 0.2 1
# execute as @s if predicate dafi:is_not_sneaking run effect give @s minecraft:jump_boost 999999 1 true

execute as @s[tag=water] run function dafi:class/storm/water


## DEATHCHECK
scoreboard players set @s[scores={deathCheck=1..,dropWave=1..}] dropWave 119

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_axe"}}]
#kill @e[type=item,nbt={Item:{id:"minecraft:nautilus_shell"}}]