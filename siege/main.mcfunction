
## SHOOT
execute at @s[scores={use=1,sentryOn=2, useSentry=0..30}] positioned ~ ~-0.2 ~ anchored eyes run function dafi:class/siege/shoot

## CHAINGUN / NORMAL
scoreboard players set @s[scores={sentryOn=1}] sentryOff 0
item replace entity @s[scores={sentryOn=1,useSentry=..30}] hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"CHAIN","italic":false,"color":"dark_gray","bold":true},{"text":"GUN","italic":false,"bold":true,"color":"gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}]}
item replace entity @s[scores={sentryOn=1}] hotbar.1 with minecraft:redstone{display:{Name:'[{"text":"Toggle Chaingun","italic":false,"bold":false,"color":"gray"}]'}}
item replace entity @s[scores={sentryOn=1}] armor.head with minecraft:observer
execute at @s[scores={sentryOn=1}] run playsound minecraft:block.barrel.open master @a[distance=..10] ~ ~ ~ 1 1 1
execute at @s[scores={sentryOn=1}] positioned ~ ~1.8 ~ run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.05 10 normal
execute at @s[scores={sentryOn=1}] positioned ~ ~1.8 ~ run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.1 25 normal
scoreboard players add @s[scores={sentryOn=1}] sentryOn 1
effect give @s[scores={sentryOn=2}] minecraft:unluck 1 1 true
effect clear @s[scores={sentryOn=2}] minecraft:jump_boost
effect give @s[scores={sentryOn=2}] minecraft:resistance 1 0 true
effect clear @s[scores={sentryOn=2}] minecraft:speed
# execute at @s[scores={sentryOn=2}] run particle minecraft:angry_villager ~ ~4 ~ 0.2 1 0.2 0.0001 1 normal
# execute at @s[scores={sentryOn=2}] run stopsound @s * item.crossbow.shoot 
scoreboard players add @s[scores={sentryOn=1}] sentryOn 1
scoreboard players set @s[scores={sentryOff=1}] sentryOn 0
item replace entity @s[scores={sentryOff=1}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1
item replace entity @s[scores={sentryOff=1}] hotbar.1 with minecraft:gunpowder{display:{Name:'[{"text":"Toggle Chaingun","italic":false,"bold":false,"color":"gray"}]'}}
item replace entity @s[scores={sentryOff=1}] armor.head with conduit{display:{Name:'[{"text":"Brain","italic":false,"color":"light_purple"}]'}} 1
execute at @s[scores={sentryOff=1}] run playsound minecraft:block.barrel.close master @a[distance=..10] ~ ~ ~ 1 1 1
scoreboard players add @s[scores={sentryOff=1}] sentryOff 1

## FIRERATE LIMIT / FLAVOR TEXT
scoreboard players add @s[scores={use=2,sentryOn=2}] useSentry 1
item replace entity @s[scores={sentryOn=2,useSentry=..30,sentryLimiter=4}] hotbar.0 with minecraft:crossbow{display:{Name:'[{"text":"CHAIN","italic":false,"color":"dark_gray","bold":true},{"text":"GUN","italic":false,"bold":true,"color":"gray"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Enchantments:[{id:"minecraft:piercing",lvl:10}]}
scoreboard players reset @s[scores={sentryLimiter=4..}] sentryLimiter
scoreboard players add @s[scores={use=2,sentryOn=2}] sentryLimiter 1
scoreboard players add @s[scores={sentryLimiter=1..}] sentryLimiter 1
title @s[scores={useSentry=20..30}] actionbar {"text":"! AMMO LOW !","bold":true,"color":"red"}
title @s[scores={useSentry=30..,sentryOff=2}] actionbar {"text":"RELOADING...","color":"yellow"}
title @s[scores={useSentry=30..,sentryOn=2}] actionbar {"text":"EMPTY :(","color":"red"}
execute at @s[scores={useSentry=30}] run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..10] ~ ~ ~ 1 1 1
title @s[scores={useSentry=230}] actionbar {"text":"\u2605 CHAINGUN RELOADED \u2605","bold":true,"color":"green"}
execute at @s[scores={useSentry=230}] run playsound minecraft:entity.arrow.hit_player master @a[scores={useSentry=230..}] ~ ~ ~ 1 1 1
scoreboard players set @s[scores={useSentry=230..}] useSentry 0
scoreboard players set @s[scores={useSentry=30}] sentryOff 1
scoreboard players add @s[scores={useSentry=30..}] useSentry 1

## USE SCOREBOARD
scoreboard players reset @s[scores={use=2..}] use
scoreboard players add @s[scores={use=1..}] use 1

## RELOAD
scoreboard players set @s[scores={dropCrossbow=1,useSentry=1..30}] sentryOff 1
scoreboard players set @s[scores={dropCrossbow=1,useSentry=1..5}] useSentry 200
scoreboard players set @s[scores={dropCrossbow=1,useSentry=6..10}] useSentry 160
scoreboard players set @s[scores={dropCrossbow=1,useSentry=11..15}] useSentry 120
scoreboard players set @s[scores={dropCrossbow=1,useSentry=16..20}] useSentry 80
scoreboard players set @s[scores={dropCrossbow=1,useSentry=21..25}] useSentry 40
scoreboard players set @s[scores={dropCrossbow=1,useSentry=26..30}] useSentry 30
execute at @s[scores={dropCrossbow=1,useSentry=90..}] run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..10] ~ ~ ~ 0.5 1 0.5
scoreboard players reset @s[scores={dropCrossbow=2..}] dropCrossbow
scoreboard players add @s[scores={dropCrossbow=1..}] dropCrossbow 1

## OVERCLOCK
attribute @s[scores={dropTripwire=1}] minecraft:generic.movement_speed base set 0.15
execute at @s[scores={dropTripwire=1}] run particle campfire_cosy_smoke ~ ~0.5 ~ 0 0 0 0.05 10
execute at @s[scores={dropTripwire=1}] run playsound block.fire.extinguish master @a ~ ~ ~ 5 1.1
attribute @s[scores={dropTripwire=21}] minecraft:generic.movement_speed base set 0.10000000149011612
item replace entity @s[scores={dropTripwire=61..}] hotbar.2 with minecraft:tripwire_hook{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1021537433,1056320062,1069698063,1260727900]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1021537433,1056320062,1069698063,1260727900]}],Unbreakable:1,display:{Name:'[{"text":"Overclock","color":"gray","bold":true,"italic":false}]'},HideFlags:3} 1
execute at @s[scores={dropTripwire=61}] run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 2
scoreboard players reset @s[scores={dropTripwire=61}] dropTripwire
scoreboard players add @s[scores={dropTripwire=1..}] dropTripwire 1

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}, CustomName:'[{"text":"CHAIN","italic":false,"color":"dark_gray","bold":true},{"text":"GUN","italic":false,"bold":true,"color":"gray"}]'}]
kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook"}}]


## DEATHCHECK
scoreboard players set @s[scores={deathcheck=1..,sentryOn=1..2}] sentryOff 1
scoreboard players set @s[scores={deathcheck=1..,useSentry=1..}] useSentry 0
item replace entity @s[scores={deathcheck=1..,sentryToggle=1}] hotbar.0 with crossbow{display:{Name:'[{"text":"JSN ","italic":false,"color":"yellow","bold":true},{"text":"X13","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5}],Unbreakable:1,HideFlags:1} 1