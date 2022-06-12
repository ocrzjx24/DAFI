execute if predicate dafi:is_sneaking run scoreboard players set @s stingCrouchCheck 1
execute if score @s stingCrouchCheck matches 1 run scoreboard players add @s stingCrouch 1
execute if score @s stingCrouchCheck matches 0 run scoreboard players set @s stingCrouch 0
execute if score @s[scores={gCD=0}] stingCrouch matches 1 run scoreboard players add @s rotate 1
execute if score @s[scores={gCD=0}] stingCrouch matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 10 1 1
execute if score @s[scores={gCD=0}] stingCrouch matches 1 at @s run playsound minecraft:item.armor.equip_turtle master @s[scores={rotateSound=1}] ~ ~ ~ 10 1 1
scoreboard players set @s stingCrouchCheck 0