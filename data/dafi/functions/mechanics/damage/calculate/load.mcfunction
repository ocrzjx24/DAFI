execute store result score @s maxhealth run attribute @s minecraft:generic.max_health get
scoreboard players operation @s newmaxhealth = @s health
item replace block 0 0 0 container.0 with minecraft:stone_button{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-1,Operation:0,UUID:[I;-832632509,-1839251188,-1342648833,-1099877052],Slot:"head"}]} 1
scoreboard players operation @s newmaxhealth -= @s damage
scoreboard players operation @s maxhealth -= @s newmaxhealth
scoreboard players operation @s maxhealth *= -1 const
execute store result block 0 0 0 Items[0].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s maxhealth
summon minecraft:armor_stand 0 -10 0 {Tags:["new"]}
scoreboard players operation @e[tag=new] sid = @s sid
execute store success score @s iswearinghelm run data modify entity @e[tag=new, limit=1] HandItems[1] set from entity @s Inventory[{Slot:103b}]
loot replace entity @s armor.head mine 0 0 0 stick{drop_contents:true}
tag @s add dfin
schedule function dafi:mechanics/damage/calculate/schedule 2t