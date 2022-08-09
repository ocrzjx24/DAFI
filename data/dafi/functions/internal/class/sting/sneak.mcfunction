execute if predicate dafi:is_sneaking run scoreboard players set @s dafi.sting.crouchCheck 1
execute if score @s dafi.sting.crouchCheck matches 1 run scoreboard players add @s dafi.sting.crouch 1
execute if score @s dafi.sting.crouchCheck matches 0 run scoreboard players set @s dafi.sting.crouch 0
execute if score @s[scores={dafi.sting.gCD=0}] dafi.sting.crouch matches 1 run scoreboard players add @s dafi.sting.rotate 1
execute if score @s[scores={dafi.sting.gCD=0}] dafi.sting.crouch matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 10 1 1
execute if score @s[scores={dafi.sting.gCD=0}] dafi.sting.crouch matches 1 at @s run playsound minecraft:item.armor.equip_turtle master @s[scores={dafi.sting.rotateSound=1}] ~ ~ ~ 10 1 1
scoreboard players set @s dafi.sting.crouchCheck 0