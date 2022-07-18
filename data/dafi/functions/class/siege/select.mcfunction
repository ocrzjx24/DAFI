## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add siege

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
execute if score #weapon weapon matches 1 run item replace entity @s[team=red] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score #weapon weapon matches 1 run item replace entity @s[team=blue] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,HideFlags:1} 1
# item replace entity @s hotbar.1 with minecraft:gunpowder{display:{Name:'[{"text":"Toggle Chaingun","italic":false,"bold":false,"color":"gray"}]'}}
# give @s minecraft:tripwire_hook{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Overclock","color":"gray","bold":true,"italic":false}]'},HideFlags:3} 1
# item replace entity @s weapon.offhand with fishing_rod
item replace entity @s hotbar.1 with iron_pickaxe
function dafi:mechanics/hat_system/hat
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SIEGE ","italic":false,"bold":true,"color":"gray"},{"text":"| ","color":"white"},{"text":"Unstoppable Machine","bold":false,"color":"white"}]',Lore:['[{"text":"\\"TARGET ACQUIRED. RECALCULATING.","italic":false}]','[{"text":"TARGET ANNIHILATED.\\"","italic":false}]','[{"text":"A walking gatling gun, mass produced for","italic":false,"color":"dark_green"}]','[{"text":"war. It\'s almost cute how primitive this","italic":false,"color":"dark_green"}]','[{"text":"machine is compared to the otherworldly","italic":false,"color":"dark_green"}]','[{"text":"abilities of others. But a cold heart and","italic":false,"color":"dark_green"}]','[{"text":"plenty of bullets can still tear you","italic":false,"color":"dark_green"}]','[{"text":"to shreds.","italic":false,"color":"dark_green"}]']}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s shotgunShots 2
scoreboard players reset @s siegeMode
scoreboard players reset @s shotgunCD 
# scoreboard players reset @a[scores={gray=1..}] gray