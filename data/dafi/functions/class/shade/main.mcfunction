## CAST
function dafi:class/shade/cast

## THROW SWORD
execute at @s[scores={dropNSword=1}] run function dafi:class/shade/summon
item replace entity @s[scores={dropNSword=14}] hotbar.1 with minecraft:netherite_sword{display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"|","color":"dark_gray","bold":false},{"text":" ","color":"gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
scoreboard players reset @s[scores={dropNSword=14..}] dropNSword
scoreboard players add @s[scores={dropNSword=1..}] dropNSword 1

## KILL SWORD
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]

## WHEN CLOSE
## DEATHCHECK
