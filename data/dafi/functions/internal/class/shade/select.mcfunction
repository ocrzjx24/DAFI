## RESET
execute at @s run function dafi:internal/game/select/reset

## TAG
tag @s add dafi.shade
scoreboard players set @s dafi.shade.checkIn 0

## ITEM
item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889},HideFlags:1} 1
item replace entity @s hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
item replace entity @s weapon.offhand with ender_eye{display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SHADE ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ","color":"white"},{"text":"Occult Assassin","bold":false,"color":"white"}]',Lore:['[{"text":"\\"Shimmering water, under moonlight.\\"","italic":false}]','[{"text":"To strike a deal with a demon was akin to","italic":false,"color":"dark_green"}]','[{"text":"making a deathwish, though perhaps it\'s","italic":false,"color":"dark_green"}]','[{"text":"what they wanted. What they received was","italic":false,"color":"dark_green"}]','[{"text":"an ever-fleeting existence and an unlikely","italic":false,"color":"dark_green"}]','[{"text":"friendship.","italic":false,"color":"dark_green"}]']}} 1
item replace entity @s inventory.1 with paper{display:{Name:'[{"text":"Onikiri ","italic":false,"bold":true,"color":"light_purple"},{"text":"| "},{"text":"WEAPON","bold":true}]',Lore:['[{"text":"SHADE wields a strange blade inhabited","italic":false}]','[{"text":"by a demon.","italic":false}]']}} 1
item replace entity @s inventory.10 with paper{display:{Name:'[{"text":"Bind ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"[Q] on ","bold":false},{"text":"Onikiri"}]',Lore:['[{"text":"The demon inside of Onikiri leaps forward,","italic":false}]','[{"text":"binding any opponent in its path. Further-","italic":false}]','[{"text":"more, any opponents within a small radius","italic":false}]','[{"text":"of the initially bound opponent are also","italic":false}]','[{"text":"bound. Opponents that are bound can be","italic":false}]','[{"text":"instantly slain with the Primed Onikiri,","italic":false}]','[{"text":"which activates itself when SHADE enters","italic":false}]','[{"text":"range.","italic":false}]','[{"text":"Cooldown: 3 sec / Effect on target: 6 sec","italic":false,"color":"blue"}]']}} 1
item replace entity @s inventory.11 with paper{display:{Name:'[{"text":"Fade ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"Hold [RMB]","bold":false}]',Lore:['[{"text":"SHADE concentrates on their demonic powers","italic":false}]','[{"text":"and morphs into a shadow. They become","italic":false}]','[{"text":"very difficult to spot, incredibly agile","italic":false}]','[{"text":"(speed and jump boost), and can run along","italic":false}]','[{"text":"walls in this state.","italic":false}]','[{"text":"Cooldown: 6 sec","italic":false,"color":"blue"}]']}} 1

function dafi:api/hat
## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={magenta=1..}] magenta