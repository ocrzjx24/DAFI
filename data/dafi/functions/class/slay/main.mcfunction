## LOAD
#scoreboard players add @s slaySneak 0
#clear @s[scores={dropMCTNT=2}] minecraft:crossbow
execute at @s[scores={slayCD=..0}] if predicate dafi:is_sneaking run scoreboard players add @s[scores={slaySneak=0..9}] slaySneak 1
execute at @s[scores={slayCD=..0}] if predicate dafi:is_not_sneaking run scoreboard players set @s[scores={slaySneak=0..9}] slaySneak 0
execute at @s[scores={slaySneak=1..10}] run function dafi:class/slay/stand2
#item replace entity @s[scores={dropMCTNT=2}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
#item replace entity @s[scores={dropMCTNT=2}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
#item replace entity @s[team=blue,scores={slaySneak=10}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]},{Type:4,Flicker:0,Trail:0,Colors:[I;2437522]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s[team=blue,scores={slaySneak=10}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;1055068]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;4855150]},{Type:4,Flicker:0,Trail:0,Colors:[I;5966685]},{Type:4,Flicker:0,Trail:0,Colors:[I;3214943]},{Type:4,Flicker:0,Trail:0,Colors:[I;3216722]},{Type:4,Flicker:0,Trail:0,Colors:[I;1120066]},{Type:4,Flicker:0,Trail:0,Colors:[I;397405]},{Type:4,Flicker:0,Trail:0,Colors:[I;5378113]},{Type:4,Flicker:0,Trail:0,Colors:[I;6427979]},{Type:4,Flicker:0,Trail:0,Colors:[I;1186914]},{Type:4,Flicker:0,Trail:0,Colors:[I;8528783]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
#item replace entity @s[team=red,scores={dropMCTNT=20}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s[team=red,scores={slaySneak=10}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;10227542]},{Type:4,Flicker:0,Trail:0,Colors:[I;11145604]},{Type:4,Flicker:0,Trail:0,Colors:[I;7476793]},{Type:4,Flicker:0,Trail:0,Colors:[I;10361108]},{Type:4,Flicker:0,Trail:0,Colors:[I;7473688]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802930]},{Type:4,Flicker:0,Trail:0,Colors:[I;6098979]},{Type:4,Flicker:0,Trail:0,Colors:[I;8790816]},{Type:4,Flicker:0,Trail:0,Colors:[I;7343451]},{Type:4,Flicker:0,Trail:0,Colors:[I;8395029]},{Type:4,Flicker:0,Trail:0,Colors:[I;7802443]}]},HideFlags:63}}],Charged:1b,Unbreakable:1,HideFlags:36} 1
execute at @s[scores={slaySneak=10}] run function dafi:class/slay/stand
execute at @s[scores={slaySneak=10}] run playsound minecraft:item.firecharge.use master @a[distance=..10] ~ ~ ~ 10000 0.7 1
#execute at @s[scores={dropMCTNT=25}] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 2 100 normal
scoreboard players set @s[scores={slaySneak=10}] useCheck 2
scoreboard players set @s[scores={slaySneak=10..}] slaySneak 0
scoreboard players remove @s[scores={useCheck=1}] useCheck 1
scoreboard players set @s[scores={useCheck=4..}] slayCD 1
scoreboard players add @s[scores={slayCD=1..}] slayCD 1
scoreboard players set @s[scores={slayCD=2}] useCheck 0
#item replace entity @s[scores={slayCD=120}] hotbar.1 with tnt_minecart{display:{Name:'[{"text":"Load","italic":false,"bold":true,"color":"red"}]',color:11546150}} 1
execute at @s[scores={slayCD=120}] run playsound minecraft:item.lodestone_compass.lock master @a[distance=..10] ~ ~ ~ 10000 0.5 1
title @s[scores={slaySneak=9}] actionbar {"text":"LOCK 'N LOAD","bold":true,"color":"red"}
title @s[scores={slayCD=119}] actionbar {"text":"\u2605 TRIGGER FINGER TWITCHES \u2605","bold":true,"color":"red"}
scoreboard players set @s[scores={slayCD=120..}] slayCD 0
scoreboard players set @s[scores={slayCD=1..119}] slaySneak 0
#scoreboard players set @s[scores={slayCD=..0}] slaySneak 1
scoreboard players set @s[scores={useCheck=2..,deathcheck=1}] slayCD 119
item replace entity @s[scores={useCheck=2..,deathcheck=1}] weapon.offhand with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
scoreboard players set @s[scores={useCheck=2..,deathcheck=1}] useCheck 0
scoreboard players set @s[scores={slaySneak=1..,deathcheck=1}] slayCD 119
scoreboard players set @s[scores={slaySneak=1..,deathcheck=1}] slaySneak 0
scoreboard players set @s[scores={slayCD=1..,deathcheck=1}] slayCD 119
execute at @s[scores={slaySneak=2}] run playsound minecraft:item.armor.equip_diamond master @a[distance=..10] ~ ~ ~ 10000 0.5 1

## EFFECT
#execute at @s[team=red,scores={dropMCTNT=18}] run effect give @a[team=blue,distance=..25] minecraft:glowing 2
#execute at @s[team=blue,scores={dropMCTNT=18}] run effect give @a[team=red,distance=..25] minecraft:glowing 2

## PARTICLES
execute as @s[scores={useCheck=2}] at @s anchored eyes run particle minecraft:dust 10 0 0.3 0.7 ^-0.7 ^-1 ^ 0.1 0.1 0.1 0.000001 10 normal
execute as @s[scores={useCheck=2..}] at @s anchored eyes run particle minecraft:dust 10 0 0.3 0.7 ^0.7 ^-1 ^ 0.1 0.1 0.1 0.000001 10 normal

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:tnt_minecart"}}]