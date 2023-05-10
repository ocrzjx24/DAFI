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
item replace entity @s hotbar.1 with netherite_sword{Unbreakable:1,mainhand:1,swap_trigger:1,display:{Name:'[{"text":"< ","italic":false,"color":"#ff6666","bold":true},{"text":"Z","color":"#ff3366"},{"text":"an","color":"#ff0066"},{"text":"k","color":"#cc0066"},{"text":"i >","color":"#990033"}]',Lore:['[{"text":"残機 | 沈香学","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"zuttomayonakadeiinoni ☽","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:knockback,lvl:2}],HideFlags:7} 1

# Initializes drop scoreboard IF player is not on cooldown
execute unless score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players set @s dafi.shade.drop.cooldown 260
tag @s remove dafi.offhandProcessed