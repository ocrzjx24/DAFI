## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add slay

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
execute if score #weapon weapon matches 1 run item replace entity @s[team=red] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 run item replace entity @s[team=blue] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:11546150},HideFlags:1} 1
#item replace entity @s hotbar.1 with tnt_minecart{display:{Name:'[{"text":"Load","italic":false,"bold":true,"color":"red"}]',color:11546150}} 1
give @s minecraft:iron_shovel{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Requiem","italic":false,"bold":true,"color":"red"},{"text":" "},{"text":"|","color":"gray"},{"text":" ","color":"gray"},{"text":"[Q]/[SHIFT]","color":"white","bold":false}]',Lore:['[{"text":"In the hopelessly dark night, a pale moon shines.","italic":false}]']},HideFlags:3} 1
function dafi:mechanics/hat_system/hat
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SLAY ","italic":false,"bold":true,"color":"red"},{"text":"| ","color":"white"},{"text":"Death Dealer","color":"white","bold":false}]',Lore:['[{"text":"\\"Ding!\\"","italic":false}]','[{"text":"Most mortals are looked down upon. Cannon fodder.","italic":false,"color":"dark_green"}]','[{"text":"Prey- to be hunted by more powerful beings. But","italic":false,"color":"dark_green"}]','[{"text":"every few centuries one rises to break that balance.","italic":false,"color":"dark_green"}]','[{"text":"The beasts have something to be afraid of now, so","italic":false,"color":"dark_green"}]','[{"text":"when that bell rings, they know it’s their toll.","italic":false,"color":"dark_green"}]']}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s slayCD 0
# scoreboard players reset @a[scores={red=1..}] red