execute if score @s lwcCharges matches 0 run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~100 ~ 100 2
execute if score @s lwcCharges matches 0 run tellraw @s ["",{"text":"[⏳] ","color":"dark_red"},{"text":"No charges left!","color":"dark_red"}]
execute if score @s lwcCharges matches 1 run tellraw @s ["",{"text":"[🔥] ","color":"dark_aqua"},{"text":"x0 charges left","color":"gray"}]
execute if score @s lwcCharges matches 2 run tellraw @s ["",{"text":"[🔥] ","color":"dark_aqua"},{"text":"x1 charges left","color":"gray"}]
execute if score @s lwcCharges matches 3 run tellraw @s ["",{"text":"[🔥] ","color":"dark_aqua"},{"text":"x2 charges left","color":"gray"}]

execute if score @s lwcCharges matches 1..3 run function dafi:class/siao/lwc
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from block 0 -64 0 container.0