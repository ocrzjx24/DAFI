
## OFFHAND
function dafi:internal/class/shade/offhand/offhand
## USE OFFHAND
function dafi:internal/class/shade/offhand/use_offhand
## CROUCH
#execute if entity @s[tag=!dafi.shade.crouched] if predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/crouch
#execute if entity @s[tag=dafi.shade.crouched] unless predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/uncrouch

## SHWING SHWING SHWING
execute if score @s dafi.shade.swap.cooldown matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players remove @s dafi.shade.swap.cooldown 1

## DROP
execute if score @s dafi.shade.dropNetheriteSword matches 1 if score @s dafi.shade.drop.cooldown matches 1.. run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Drop","color":"white"},{"text":")","color":"red"}] 
execute if score @s dafi.shade.dropNetheriteSword matches 1 unless score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players set @s dafi.shade.drop.cooldown 1
execute if score @s dafi.shade.drop.cooldown matches 1 at @s positioned ^ ^ ^ run function dafi:internal/class/shade/summon
execute if score @s dafi.shade.drop.cooldown matches 1 at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute if score @s dafi.shade.drop.cooldown matches 1 at @s anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^1 0 0 0 1 3 normal
execute if score @s dafi.shade.drop.cooldown matches 1 at @s run playsound minecraft:block.soul_sand.place master @a ~ ~ ~ 1 1.5
execute if score @s dafi.shade.drop.cooldown matches 1 at @s run playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 1 1
execute if score @s dafi.shade.drop.cooldown matches 1 at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
execute if score @s dafi.shade.drop.cooldown matches 1 run scoreboard players set @s delta.addition.magnitude 6000
execute if score @s dafi.shade.drop.cooldown matches 1 at @s rotated ~ ~180 run function dafi:internal/mechanics/addition/add_motion
execute if score @s dafi.shade.drop.cooldown matches 20 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Drop","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.shade.drop.cooldown matches 20 run scoreboard players reset @s dafi.shade.drop.cooldown
execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players add @s dafi.shade.drop.cooldown 1
execute if score @s dafi.shade.dropNetheriteSword matches 1.. run scoreboard players reset @s dafi.shade.dropNetheriteSword


##KILLz
#kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}}]