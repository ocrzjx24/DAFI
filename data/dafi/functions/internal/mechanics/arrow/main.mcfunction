# execute as @e[type=arrow,tag=!arrowProcessed] run function dafi:mechanics/arrow/particle/arrowlife

execute as @a if score @s dafi.arrow.CD = #universal dafi.arrowdelay at @s unless score @s dafi.siege.mode matches 1 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 0.7

#execute as @a[team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay unless score @s dafi.siege.mode matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,}],Charged:1b,HideFlags:36} 1
#execute as @a[team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay unless score @s dafi.siege.mode matches 1 run item replace entity @s hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,}],Charged:1b,HideFlags:36} 1

#execute as @a[tag=dafi.slay,team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay run item replace entity @s weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,}],Charged:1b,HideFlags:36} 1
#execute as @a[tag=dafi.slay,team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay run item replace entity @s weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,}],Charged:1b,HideFlags:36} 11

execute as @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay unless score @s dafi.siege.mode matches 1 run item replace entity @s hotbar.0 with crossbow{mainhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,HideFlags:36} 1
execute as @a[tag=dafi.slay,nbt={Inventory:[{id:"minecraft:crossbow"}]}] if score @s dafi.arrow.CD = #universal dafi.arrowdelay run item replace entity @s weapon.offhand with crossbow{offhand:1,display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,HideFlags:36} 1

execute as @a if score @s dafi.arrow.CD = #universal dafi.arrowdelay unless score @s dafi.siege.mode matches 1 run scoreboard players reset @s dafi.arrow.CD
execute as @a if score @s dafi.arrow.CD < #universal dafi.arrowdelay run scoreboard players add @s dafi.arrow.CD 1



# class-specific arrows
execute as @e[tag=dafi.arrow.siege] at @s run function dafi:internal/class/siege/arrow/arrow
execute as @e[tag=dafi.arrow.saint] at @s run function dafi:internal/class/saint/arrow/arrow
execute as @e[tag=dafi.arrow.slay] at @s run function dafi:internal/class/slay/arrow/arrow
execute as @e[tag=dafi.arrow.sting] at @s run function dafi:internal/class/sting/arrow/arrow
execute as @e[tag=dafi.arrow.soul] at @s run function dafi:internal/class/soul/arrow/arrow
execute as @e[tag=dafi.arrow.steel] at @s run function dafi:internal/class/steel/arrow/arrow
execute as @e[tag=dafi.arrow.storm] at @s run function dafi:internal/class/storm/arrow/arrow
execute as @e[tag=dafi.arrow.shade] at @s run function dafi:internal/class/shade/arrow/arrow
execute as @e[tag=dafi.arrow.swamp] at @s run function dafi:internal/class/swamp/arrow/arrow

#execute at @e[type=minecraft:arrow] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.7 0

execute as @e[type=arrow,nbt={inGround:true}] at @s run function dafi:internal/mechanics/arrow/arrow_inground/main

# arrow lifetime
kill @e[tag=!dafi.arrow.sting.sticky,scores={dafi.arrow.lifetime=60..}]
kill @e[tag=dafi.arrow.sting.sticky,scores={dafi.arrow.lifetime=300..}]
scoreboard players add @e[tag=dafi.arrow.processed] dafi.arrow.lifetime 1
#sting exception