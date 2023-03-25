##> dafi:internal/class/shade/drop/triggered
# Triggers when player drops a netherite sword 
#
# callers:
# > dafi:internal/class/shade/drop/disappear
##############################################################################

# Kills dropped item
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]

# Plays cooldown message if player is still on cooldown
execute if score @s dafi.shade.drop.cooldown matches 1.. run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Drop","color":"white"},{"text":")","color":"red"}] 
execute if score @s dafi.shade.drop.cooldown matches 1.. run playsound minecraft:block.note_block.hat master @s ~ ~100 ~ 1000 1.2 
# Returns netherite sword
item replace entity @s hotbar.1 with minecraft:netherite_sword{mainhand:1,display:{Name:'[{"text":"Oni","italic":false,"bold":true,"color":"light_purple"},{"text":"kiri ","color":"dark_purple"},{"text":"| ","color":"dark_gray","bold":false},{"text":"[Q]","color":"white","bold":false},{"text":"/","color":"dark_gray","bold":false},{"text":"[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Type: 🧪 ","italic":false,"color":"green"},{"text":"/","color":"dark_green"},{"text":" 🔥"}]']},Unbreakable:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1069942072,1057578295,1077372865,1692893952]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1069942072,1057578295,1077372865,1692893952]}],HideFlags:7} 1

# Initializes drop scoreboard IF player is not on cooldown
execute unless score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players set @s dafi.shade.drop.cooldown 220