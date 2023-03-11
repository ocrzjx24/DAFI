
## OFFHAND
function dafi:internal/class/shade/offhand/offhand
## USE OFFHAND
function dafi:internal/class/shade/offhand/use_offhand

execute if data entity @s[tag=dafi.shade.primed] {OnGround:1b} at @s run function dafi:internal/class/shade/summon
execute if data entity @s[tag=dafi.shade.primed] {OnGround:1b} run tag @s remove dafi.shade.primed

## CROUCH
#execute if entity @s[tag=!dafi.shade.crouched] if predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/crouch
#execute if entity @s[tag=dafi.shade.crouched] unless predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/uncrouch

## SHWING SHWING SHWING
execute if score @s dafi.shade.swap.cooldown matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players remove @s dafi.shade.swap.cooldown 1

## DROP
execute if score @s dafi.shade.dropNetheriteSword matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]
execute if score @s dafi.shade.dropNetheriteSword matches 1 if score @s dafi.shade.drop.cooldown matches 1.. run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Drop","color":"white"},{"text":")","color":"red"}] 
execute if score @s dafi.shade.dropNetheriteSword matches 1 run item replace entity @s hotbar.1 with minecraft:netherite_sword{mainhand:1,display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
execute if score @s dafi.shade.dropNetheriteSword matches 1 unless score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players set @s dafi.shade.drop.cooldown 1
execute if score @s dafi.shade.drop.cooldown matches 1 run clear @s
execute if score @s dafi.shade.drop.cooldown matches 1 run effect give @s invisibility 3 0 true
execute if score @s dafi.shade.drop.cooldown matches 1 run effect give @s speed 3 9 true
#execute if score @s dafi.shade.drop.cooldown matches 1 run effect give @s slow_falling 1 0 true

execute if score @s dafi.shade.drop.cooldown matches 1 at @s run function dafi:internal/class/shade/slash/drop
#execute if score @s dafi.shade.dropNetheriteSword matches 1 run item replace entity @s hotbar.1 with minecraft:netherite_sword{mainhand:1,display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
execute if score @s dafi.shade.drop.cooldown matches 1 run scoreboard players set @s delta.addition.magnitude 2000
execute if score @s dafi.shade.drop.cooldown matches 1 at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
execute if score @s dafi.shade.drop.cooldown matches 1 run scoreboard players set @s delta.addition.magnitude 10000
execute if score @s dafi.shade.drop.cooldown matches 1 at @s rotated ~ 180 run function dafi:internal/mechanics/addition/add_motion

execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"安倍","italic":false,"color":"yellow","bold":true},{"text":"晋三","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889},HideFlags:1} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s hotbar.1 with minecraft:netherite_sword{mainhand:1,display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{offhand:1,display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SHADE ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ","color":"white"},{"text":"Occult Assassin","bold":false,"color":"white"}]',Lore:['[{"text":"\\"Shimmering water, under moonlight.\\"","italic":false}]','[{"text":"To strike a deal with a demon was akin to","italic":false,"color":"dark_green"}]','[{"text":"making a deathwish, though perhaps it\'s","italic":false,"color":"dark_green"}]','[{"text":"what they wanted. What they received was","italic":false,"color":"dark_green"}]','[{"text":"an ever-fleeting existence and an unlikely","italic":false,"color":"dark_green"}]','[{"text":"friendship.","italic":false,"color":"dark_green"}]']}} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s inventory.1 with paper{display:{Name:'[{"text":"Onikiri ","italic":false,"bold":true,"color":"light_purple"},{"text":"| "},{"text":"WEAPON","bold":true}]',Lore:['[{"text":"SHADE wields a strange blade inhabited","italic":false}]','[{"text":"by a demon.","italic":false}]']}} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s inventory.10 with paper{display:{Name:'[{"text":"Bind ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"[Q] on ","bold":false},{"text":"Onikiri"}]',Lore:['[{"text":"The demon inside of Onikiri leaps forward,","italic":false}]','[{"text":"binding any opponent in its path. Further-","italic":false}]','[{"text":"more, any opponents within a small radius","italic":false}]','[{"text":"of the initially bound opponent are also","italic":false}]','[{"text":"bound. Opponents that are bound can be","italic":false}]','[{"text":"instantly slain with the Primed Onikiri,","italic":false}]','[{"text":"which activates itself when SHADE enters","italic":false}]','[{"text":"range.","italic":false}]','[{"text":"Cooldown: 3 sec / Effect on target: 6 sec","italic":false,"color":"blue"}]']}} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run item replace entity @s inventory.11 with paper{display:{Name:'[{"text":"Fade ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"Hold [RMB]","bold":false}]',Lore:['[{"text":"SHADE concentrates on their demonic powers","italic":false}]','[{"text":"and morphs into a shadow. They become","italic":false}]','[{"text":"very difficult to spot, incredibly agile","italic":false}]','[{"text":"(speed and jump boost), and can run along","italic":false}]','[{"text":"walls in this state.","italic":false}]','[{"text":"Cooldown: 6 sec","italic":false,"color":"blue"}]']}} 1
execute if score @s dafi.shade.drop.cooldown matches 60 run function dafi:api/hat



execute if score @s dafi.shade.drop.cooldown matches 120.. run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Drop","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.shade.drop.cooldown matches 120.. run scoreboard players reset @s dafi.shade.drop.cooldown
execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players add @s dafi.shade.drop.cooldown 1
execute if score @s dafi.shade.dropNetheriteSword matches 1.. run scoreboard players reset @s dafi.shade.dropNetheriteSword



##KILLz
#kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]