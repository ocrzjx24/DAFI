## RESET
execute at @s run function dafi:game/select/reset

## TAG
tag @s add sting

## ITEM
give @s crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1,display:{color:16351261}} 1
item replace entity @s hotbar.1 with honeycomb{display:{Name:'[{"text":"Rotate Cylinder","italic":false,"bold":true,"color":"gold"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
item replace entity @s[team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Sticky Bomb","italic":false,"color":"yellow"}]'}}
item replace entity @s[team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Sticky Bomb","italic":false,"color":"yellow"}]'}}
item replace entity @s hotbar.2 with minecraft:iron_axe{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"KLE Choppa","color":"white","bold":true,"italic":false}]'},HideFlags:3} 1
item replace entity @s armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"STING","italic":false,"color":"gold","bold":true},{"text":" ","color":"yellow"},{"text":"| ","color":"white"},{"text":"Coltish Alchemist","color":"white","bold":false}]',Lore:['[{"text":"\\"哎呀, butterfingers!\\"","italic":false}]','[{"text":"With a deep understanding of magic,","italic":false,"color":"dark_green"}]','[{"text":"a PhD in biochemistry, and a question-","italic":false,"color":"dark_green"}]','[{"text":"able sense of humor, the Alchemist and","italic":false,"color":"dark_green"}]','[{"text":"their concoctions strike fear into the","italic":false,"color":"dark_green"}]','[{"text":"hearts of pretty much everyone except","italic":false,"color":"dark_green"}]','[{"text":"themselves. Unfortunately.","italic":false,"color":"dark_green"}]']}} 1
item replace entity @s inventory.1 with paper{display:{Name:'[{"text":"Shoulder Launcher ","italic":false,"bold":true},{"text":"| PASSIVE","color":"white"}]',Lore:['[{"text":"STING carries a grenade launcher with a","italic":false}]','[{"text":"rotating cylinder, allowing them to","italic":false}]','[{"text":"switch between the two grenade types.","italic":false}]','[{"text":"Cooldown: 6 sec","italic":false,"color":"blue"}]']}} 1
item replace entity @s inventory.10 with paper{display:{Name:'[{"text":"Pondering Orb ","italic":false,"bold":true},{"text":"| ACTIVE | ","color":"white"},{"text":"[RMB]","color":"gray","bold":false}]',Lore:['[{"text":"Fire an orb of celestial magic that","italic":false}]','[{"text":"creates a star field upon impact.","italic":false}]','[{"text":"All opponents caught in the star field","italic":false}]','[{"text":"have their locations revealed to STING\'s","italic":false}]','[{"text":"team.","italic":false}]']}} 1
item replace entity @s inventory.11 with paper{display:{Name:'[{"text":"Wyvern Egg ","italic":false,"bold":true},{"text":"| ACTIVE | ","color":"white"},{"text":"[RMB]","color":"gray","bold":false}]',Lore:['[{"text":"Fire an enchanted molly that deals fire","italic":false}]','[{"text":"damage and inflicts slowness against","italic":false}]','[{"text":"opponents.","italic":false}]']}} 1

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
scoreboard players set @s rotate 1
scoreboard players set @s gCD 0
# scoreboard players reset @a[scores={orange=1..}] orange
