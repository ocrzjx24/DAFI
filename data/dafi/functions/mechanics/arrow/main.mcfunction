# execute as @e[type=arrow,tag=!arrowProcessed] run function dafi:mechanics/arrow/particle/arrowlife

execute as @a[scores={arrowCD=30}] at @s unless score @s siegeMode matches 1 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 0.7

# execute if score #weapon weapon matches 1 run item replace entity @a[scores={arrowCD=30},team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:30713080,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
# execute if score #weapon weapon matches 1 run item replace entity @a[scores={arrowCD=30},team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1

execute if score #weapon weapon matches 1 as @a[scores={arrowCD=30},team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] unless score @s siegeMode matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
execute if score #weapon weapon matches 1 as @a[scores={arrowCD=30},team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] unless score @s siegeMode matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1

execute if score #weapon weapon matches 1 run item replace entity @a[scores={arrowCD=30},tag=slay,team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1
execute if score #weapon weapon matches 1 run item replace entity @a[scores={arrowCD=30},tag=slay,team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:255,CustomPotionEffects:[{Id:7,Duration:1,Amplifier:4,ShowParticles:0b,ShowIcon:0b}]}}],Charged:1b,HideFlags:36} 1

#execute as @a[scores={arrowCD=1}] at @s anchored eyes positioned ^ ^ ^6 run function dafi:mechanics/arrow/particle/particle1
#execute as @a[scores={arrowCD=1}] at @s anchored eyes positioned ^ ^ ^6.5 run function dafi:mechanics/arrow/particle/particle2
#execute as @a[scores={arrowCD=1}] at @s anchored eyes positioned ^ ^ ^8 run function dafi:mechanics/arrow/particle/particle3
#execute as @a[scores={arrowCD=1}] at @s run function dafi:mechanics/arrow/particle/particle4

# execute unless entity @s[scores={siegeMode=1}] run scoreboard players reset @a[scores={arrowCD=30..}] arrowCD
execute as @a[scores={arrowCD=30..}] unless score @s siegeMode matches 1 run scoreboard players reset @s arrowCD
scoreboard players add @a[scores={arrowCD=1..29}] arrowCD 1

#execute at @e[type=minecraft:arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.7 0
