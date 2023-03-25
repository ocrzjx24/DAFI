## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.siege

## ITEM
item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with chainmail_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'[{"text":"Standard Issue Leather Pants","italic":false,"color":"white","bold":true}]'},Enchantments:[{id:swift_sneak,lvl:3}]} 1
# item replace entity @s hotbar.1 with minecraft:gunpowder{display:{Name:'[{"text":"Toggle Chaingun","italic":false,"bold":false,"color":"gray"}]'}}
# give @s minecraft:tripwire_hook{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Overclock","color":"gray","bold":true,"italic":false}]'},HideFlags:3} 1
# item replace entity @s weapon.offhand with fishing_rod
item replace entity @s hotbar.1 with fishing_rod{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"MEAT","italic":false,"color":"dark_red","bold":true},{"text":"HOOK","color":"dark_gray"}]',Lore:['[{"text":"ror2 reference","italic":false}]']},Enchantments:[{id:sharpness,lvl:5}],HideFlags:101} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SIEGE ","italic":false,"bold":true,"color":"gray"},{"text":"| ","color":"white"},{"text":"Unstoppable Machine","bold":false,"color":"white"}]',Lore:['[{"text":"\\"TARGET ACQUIRED. RECALCULATING.","italic":false}]','[{"text":"TARGET ANNIHILATED.\\"","italic":false}]','[{"text":"A walking gatling gun, mass produced for","italic":false,"color":"dark_green"}]','[{"text":"war. It\'s almost cute how primitive this","italic":false,"color":"dark_green"}]','[{"text":"machine is compared to the otherworldly","italic":false,"color":"dark_green"}]','[{"text":"abilities of others. But a cold heart and","italic":false,"color":"dark_green"}]','[{"text":"plenty of bullets can still tear you","italic":false,"color":"dark_green"}]','[{"text":"to shreds.","italic":false,"color":"dark_green"}]']}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s dafi.siege.shotgunShots 30
scoreboard players reset @s dafi.siege.mode
scoreboard players reset @s dafi.siege.shotgunCD 
# scoreboard players reset @a[scores={gray=1..}] gray

## advancements
advancement revoke @s only dafi:inventory_changed