## GIVE WOODEN AXE
item replace entity @s hotbar.1 with wooden_axe{mainhand:1,display:{Name:'[{"text":"Maul","italic":false,"color":"dark_red","bold":true},{"text":" ","color":"#ffd814"},{"text":"| ","color":"gray"},{"text":"[⌛]/[⌛]","color":"gray","bold":false}]',Lore:['[{"text":"Thousands disappeared. None were ever found.","italic":false}]']},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],Enchantments:[{id:"minecraft:thorns",lvl:1}]} 1

## SET AND PAIR GLOBAL ID
tag @s add dafi.swamp.init
execute at @s run function dafi:internal/class/swamp/summon
scoreboard players add .global dafi.sbsid 1
scoreboard players operation @e[type=armor_stand,tag=dafi.swamp.TP,limit=1,tag=dafi.swamp.init] dafi.sbsid = .global dafi.sbsid
# tp @e[type=armor_stand,tag=dafi.swamp.TP,tag=dafi.swamp.init,sort=nearest,limit=1] @s
scoreboard players operation @p[tag=dafi.swamp.init] dafi.sbsid = .global dafi.sbsid
tag @e remove dafi.swamp.init

