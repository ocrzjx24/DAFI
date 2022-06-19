## LOAD
#scoreboard players add @s slaySneak 0
#clear @s[scores={dropMCTNT=2}] minecraft:crossbow
execute if score @s slayCD matches ..0 if predicate dafi:is_sneaking run scoreboard players add @s[scores={slaySneak=0..9}] slaySneak 1
execute if score @s slayCD matches ..0 if predicate dafi:is_not_sneaking run scoreboard players set @s[scores={slaySneak=0..9}] slaySneak 0
execute if score @s slaySneak matches 1..10 run function dafi:class/slay/stand2

# FOR FIREWORKS
execute unless score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=blue] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute unless score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=blue] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;1055068]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;4855150]},{Type:4,Flicker:0,Trail:0,Colors:[I;5966685]},{Type:4,Flicker:0,Trail:0,Colors:[I;3214943]},{Type:4,Flicker:0,Trail:0,Colors:[I;3216722]},{Type:4,Flicker:0,Trail:0,Colors:[I;1120066]},{Type:4,Flicker:0,Trail:0,Colors:[I;397405]},{Type:4,Flicker:0,Trail:0,Colors:[I;5378113]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;1186914]},{Type:4,Flicker:0,Trail:0,Colors:[I;8528783]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute unless score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=red] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute unless score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=red] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;10227542]},{Type:4,Flicker:0,Trail:0,Colors:[I;11145604]},{Type:4,Flicker:0,Trail:0,Colors:[I;7476793]},{Type:4,Flicker:0,Trail:0,Colors:[I;10361108]},{Type:4,Flicker:0,Trail:0,Colors:[I;7473688]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802930]},{Type:4,Flicker:0,Trail:0,Colors:[I;6098979]},{Type:4,Flicker:0,Trail:0,Colors:[I;8790816]},{Type:4,Flicker:0,Trail:0,Colors:[I;7343451]},{Type:4,Flicker:0,Trail:0,Colors:[I;8395029]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802443]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
# FOR ARROWS
execute if score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=blue] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;1055068]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;4855150]},{Type:4,Flicker:0,Trail:0,Colors:[I;5966685]},{Type:4,Flicker:0,Trail:0,Colors:[I;3214943]},{Type:4,Flicker:0,Trail:0,Colors:[I;3216722]},{Type:4,Flicker:0,Trail:0,Colors:[I;1120066]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=blue] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;1055068]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;4855150]},{Type:4,Flicker:0,Trail:0,Colors:[I;5966685]},{Type:4,Flicker:0,Trail:0,Colors:[I;3214943]},{Type:4,Flicker:0,Trail:0,Colors:[I;3216722]},{Type:4,Flicker:0,Trail:0,Colors:[I;1120066]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=red] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;10227542]},{Type:4,Flicker:0,Trail:0,Colors:[I;11145604]},{Type:4,Flicker:0,Trail:0,Colors:[I;7476793]},{Type:4,Flicker:0,Trail:0,Colors:[I;10361108]},{Type:4,Flicker:0,Trail:0,Colors:[I;7473688]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802930]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 if score @s slaySneak matches 10 run item replace entity @s[team=red] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;10227542]},{Type:4,Flicker:0,Trail:0,Colors:[I;11145604]},{Type:4,Flicker:0,Trail:0,Colors:[I;7476793]},{Type:4,Flicker:0,Trail:0,Colors:[I;10361108]},{Type:4,Flicker:0,Trail:0,Colors:[I;7473688]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802930]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1

execute if score @s slaySneak matches 10 at @s run playsound minecraft:block.piston.contract master @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if score @s slaySneak matches 10 at @s run playsound minecraft:block.iron_trapdoor.close master @a[distance=..10] ~ ~ ~ 10000 0.7 1
execute if score @s slaySneak matches 10 at @s run playsound minecraft:block.bell.use master @a[distance=..10] ~ ~ ~ 1 2 1
#execute at @s[scores={dropMCTNT=25}] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 2 100 normal

execute if score @s slaySneak matches 10 run scoreboard players set @s useCheck 2
execute if score @s slaySneak matches 10.. run scoreboard players set @s slaySneak 0
execute if score @s useCheck matches 1 run scoreboard players remove @s useCheck 1
execute if score @s useCheck matches 4.. run scoreboard players set @s slayCD 1
execute if score @s slayCD matches 1.. run scoreboard players add @s slayCD 1
execute if score @s slayCD matches 2 run scoreboard players set @s useCheck 0

execute if score @s slayCD matches 71 at @s run playsound minecraft:item.lodestone_compass.lock master @a[distance=..10] ~ ~ ~ 10000 0.5 1
execute if score @s slaySneak matches 9 run title @s actionbar {"text":"LOCK AND LOAD","bold":true,"color":"red"}
execute if score @s slayCD matches 70 run title @s actionbar {"text":"\u2605 TRIGGER FINGER TWITCHES \u2605","bold":true,"color":"red"}
execute if score @s slayCD matches 71.. run scoreboard players set @s slayCD 0
execute if score @s slayCD matches 1..70 run scoreboard players set @s slaySneak 0
scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Charged:1b}}]}] slayCD 1
execute if score @s slaySneak matches 5 at @s run playsound minecraft:item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 10000 0.5 1

## DEATHCHECK
execute if score @s useCheck matches 2.. if score @s deathcheck matches 1 run scoreboard players set @s slayCD 70
execute if score @s useCheck matches 2.. if score @s deathcheck matches 1 run item replace entity @s[scores={useCheck=2..,deathcheck=1}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
execute if score @s useCheck matches 2.. if score @s deathcheck matches 1 run scoreboard players set @s useCheck 0

execute if score @s slaySneak matches 1.. if score @s deathcheck matches 1 run scoreboard players set @s slayCD 70
execute if score @s slaySneak matches 1.. if score @s deathcheck matches 1 run scoreboard players set @s slaySneak 0
execute if score @s slayCD matches 1.. if score @s deathcheck matches 1 run scoreboard players set @s slayCD 70

execute if score @s dropBlood matches 1.. if score @s deathcheck matches 1 run item replace entity @s hotbar.1 with minecraft:iron_shovel{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Requiem","italic":false,"bold":true,"color":"red"},{"text":" "},{"text":"|","color":"gray"},{"text":" ","color":"gray"},{"text":"[Q]/[SHIFT]","color":"white","bold":false}]',Lore:['[{"text":"In the hopelessly dark night, a pale moon shines.","italic":false}]']},HideFlags:3} 1
execute if score @s dropBlood matches 1.. if score @s deathcheck matches 1 run scoreboard players reset @s dropBlood

## EFFECT
#execute at @s[team=red,scores={dropMCTNT=18}] run effect give @a[team=blue,distance=..25] minecraft:glowing 2
#execute at @s[team=blue,scores={dropMCTNT=18}] run effect give @a[team=red,distance=..25] minecraft:glowing 2

## PARTICLES
execute if score @s slayCD matches 1 at @s anchored eyes run particle minecraft:dust 10 0 0.3 0.7 ^-0.7 ^-1 ^ 0.1 0.1 0.1 0.000001 5 normal
execute if score @s slayCD matches 1 at @s anchored eyes run particle minecraft:dust 10 0 0.3 0.7 ^0.7 ^-1 ^ 0.1 0.1 0.1 0.000001 5 normal

## RECON UPDATE
execute if score @s dropBlood matches 1..139 run scoreboard players add @s dropBlood 1
execute if score @s dropBlood matches 2 at @s run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 1 1 1
execute if score @s dropBlood matches 20 at @s run function dafi:class/slay/stand
execute if score @s dropBlood matches 20 at @s run playsound minecraft:item.trident.thunder master @a[distance=..10] ~ ~ ~ 0.7 2 1
execute if score @s dropBlood matches 20 at @s run playsound minecraft:block.bell.resonate master @a[distance=..10] ~ ~ ~ 1 2 1

# execute if score @s[team=red] dropBlood matches 20 at @s run effect give @a[team=blue,distance=..20] minecraft:glowing 2
# execute if score @s[team=blue] dropBlood matches 20 at @s run effect give @a[team=red,distance=..20] minecraft:glowing 2
execute if score @s[team=red] dropBlood matches 20 at @s run tag @a[team=blue,distance=..25] add glow
execute if score @s[team=red] dropBlood matches 20 at @s run title @a[team=blue,distance=..25] actionbar {"text":"! MARKED !","bold":true,"color":"red"}
execute if score @s[team=blue] dropBlood matches 20 at @s run tag @a[team=red,distance=..25] add glow
execute if score @s[team=blue] dropBlood matches 20 at @s run title @a[team=red,distance=..25] actionbar {"text":"! MARKED !","bold":true,"color":"red"}
execute if score @s dropBlood matches 140 at @s run playsound minecraft:item.axe.scrape master @s ~ ~ ~ 10000 1 1
execute if score @s dropBlood matches 140 run item replace entity @s hotbar.1 with minecraft:iron_shovel{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Requiem","italic":false,"bold":true,"color":"red"},{"text":" "},{"text":"|","color":"gray"},{"text":" ","color":"gray"},{"text":"[Q]/[SHIFT]","color":"white","bold":false}]',Lore:['[{"text":"In the hopelessly dark night, a pale moon shines.","italic":false}]']},HideFlags:3} 1

execute if score @s dropBlood matches 140.. run scoreboard players reset @s dropBlood

## KILL
#kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}}]