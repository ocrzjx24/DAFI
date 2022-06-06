## XP BAR
xp set @a[scores={CD=4}] 1 points
xp set @a[scores={CD=8}] 2 points
xp set @a[scores={CD=11}] 3 points
xp set @a[scores={CD=15}] 4 points
xp set @a[scores={CD=19}] 5 points
xp set @a[scores={CD=23}] 6 points
xp add @a[scores={CD=26}] 1 points
xp set @a[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]}] 1 levels
xp set @a[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:0b}}]}] 0 levels

## SOUND
execute at @e[type=minecraft:firework_rocket] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1.7 0
execute at @a[scores={CD=30}] run playsound minecraft:item.crossbow.loading_end master @a[scores={CD=30}] ~ ~ ~

## PARTICLE
execute at @a[scores={CD=1}] run particle minecraft:lava ~ ~-0.5 ~ 0.5 0.5 0.5 0.0001 5

## ITEM
item replace entity @a[scores={CD=30},team=red,nbt={Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @a[scores={CD=30},team=blue,nbt={Inventory:[{id:"minecraft:crossbow"}]}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1

## SCOREBOARD
scoreboard players reset @a[scores={CD=31..}] CD
scoreboard players add @a CD 1
# RESET CHECK
scoreboard players reset @a[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Charged:1b}}]}] CD