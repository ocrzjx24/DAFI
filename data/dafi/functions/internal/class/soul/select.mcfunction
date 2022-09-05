## RESET
execute at @s run function dafi:internal/game/select/reset
## TAG
tag @s add dafi.soul

## ITEM
item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with golden_boots{Enchantments:[{id:"depth_strider",lvl:3},{id:"soul_speed",lvl:3},{id:"binding_curse",lvl:1}],Unbreakable:1,HideFlags:1} 1
give @s golden_hoe{display:{Name:'[{"text":"Soul ","italic":false,"color":"#ffd814","bold":true},{"text":"Reaver","color":"aqua"},{"text":" "},{"text":"| ","color":"gray"},{"text":"[Q]","color":"white","bold":false}]',Lore:['[{"text":"For millennia, all they could do was run. Even in death, they run.","italic":false}]']},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]}],HideFlags:3} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SOUL ","italic":false,"color":"yellow","bold":true},{"text":"| ","color":"white"},{"text":"Transcendent Traveler","color":"white","bold":false}]',Lore:['[{"text":"\\"I walk where no one has dared before.\\"","italic":false}]','[{"text":"Few were brave enough to explore the","italic":false,"color":"dark_green"}]','[{"text":"Higher Plane, and even fewer returned.","italic":false,"color":"dark_green"}]','[{"text":"The suffering meant for thousands of","italic":false,"color":"dark_green"}]','[{"text":"souls, meant to last thousands of years,","italic":false,"color":"dark_green"}]','[{"text":"were imparted upon one.","italic":false,"color":"dark_green"}]']}} 1
item replace entity @s inventory.10 with paper{display:{Name:'[{"text":"Planeshift ","italic":false,"color":"yellow","bold":true},{"text":"| ACTIVE | ","color":"white"},{"text":"[Q] on ","color":"gray","bold":false},{"text":"Soul Reaver","color":"gray"}]',Lore:['[{"text":"SOUL slices through the fabric of","italic":false,"color":"dark_green"}]','[{"text":"spacetime, allowing them to dash","italic":false,"color":"dark_green"}]','[{"text":"forward with great speed.","italic":false,"color":"dark_green"}]','[{"text":"Cooldown: 3 sec","italic":false,"color":"blue"}]']}} 1
item replace entity @s inventory.1 with paper{display:{Name:'[{"text":"Soul Reaver","italic":false,"color":"yellow","bold":true},{"text":" ","bold":false},{"text":"|"},{"text":" ","bold":false},{"text":"WEAPON"}]',Lore:['[{"text":"SOUL wields a scythe made of","italic":false}]','[{"text":"otherworldly metal. Every","italic":false}]','[{"text":"successful hit with the Soul","italic":false}]','[{"text":"Reaver against an opponent","italic":false}]','[{"text":"grants SOUL ","italic":false},{"text":"SOULSTEAL","color":"yellow"},{"text":".","color":"dark_purple"}]']}} 1
item replace entity @s inventory.2 with paper{display:{Name:'[{"text":"Agility ","italic":false,"color":"yellow","bold":true},{"text":"| ","color":"white"},{"text":"PASSIVE","color":"white","bold":true}]',Lore:['[{"text":"SOUL has a passive speed buff","italic":false,"color":"dark_green"}]','[{"text":"compared to the other classes.","italic":false,"color":"dark_green"}]']}} 1
item replace entity @s inventory.3 with paper{display:{Name:'[{"text":"Soulsteal ","italic":false,"color":"yellow","bold":true},{"text":"| ","color":"white"},{"text":"PASSIVE","color":"white","bold":true}]',Lore:['[{"text":"Upon killing an opponent,","italic":false,"color":"dark_green"}]','[{"text":"SOUL gains a speed boost","italic":false,"color":"dark_green"}]','[{"text":"and healing bonus.","italic":false,"color":"dark_green"}]']}} 1

function dafi:api/hat

## SOUND
execute at @s run playsound minecraft:item.armor.equip_netherite master @s ~ ~ ~ 1 1 1

## TITLE
title @s reset

## SCOREBOARD
# scoreboard players reset @a[scores={yellow=1..}] yellow