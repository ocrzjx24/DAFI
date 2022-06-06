## ROTATE ITEM
item replace entity @s[scores={gCD=0,rotate=4,rotateSound=1},team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Stellar Sonar","italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={gCD=0,rotate=4,rotateSound=1},team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Stellar Sonar","italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={gCD=0,rotate=2,rotateSound=1}] weapon.offhand with minecraft:splash_potion{CustomPotionEffects:[{Id:26,Amplifier:0,Duration:160,ShowParticles:0b}],CustomPotionColor:16300586,display:{Name:'[{"text":"Stim Splash","italic":false,"color":"green"}]'},HideFlags:63}
item replace entity @s[scores={gCD=0,rotate=3,rotateSound=1},team=red] weapon.offhand with minecraft:egg{red:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
item replace entity @s[scores={gCD=0,rotate=3,rotateSound=1},team=blue] weapon.offhand with minecraft:egg{blue:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}

## SOUND 1
execute at @s[scores={rotateSound=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @s[scores={rotateSound=1}] ~ ~ ~ 10 1 1
execute at @s[scores={rotateSound=1}] run playsound minecraft:item.armor.equip_turtle master @s[scores={rotateSound=1}] ~ ~ ~ 10 1 1
execute at @s[scores={gCD=1}] run playsound minecraft:entity.arrow.shoot master @a[distance=..10] ~ ~ ~ 10 1 1

## SCOREBOARD 1
scoreboard players add @s[scores={g1=1}] gCD 1
scoreboard players add @s[scores={g2=1}] gCD 1
scoreboard players add @s[scores={g3=1}] gCD 1

## ITEM 2
item replace entity @s[scores={gCD=120,rotate=1},team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Stellar Sonar","italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={gCD=120,rotate=1},team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Stellar Sonar","italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={gCD=120,rotate=2}] weapon.offhand with minecraft:splash_potion{CustomPotionEffects:[{Id:26,Amplifier:0,Duration:160,ShowParticles:0b}],CustomPotionColor:16300586,display:{Name:'[{"text":"Stim Splash","italic":false,"color":"green"}]'},HideFlags:63}
item replace entity @s[scores={gCD=120,rotate=3},team=red] weapon.offhand with minecraft:egg{red:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
item replace entity @s[scores={gCD=120,rotate=3},team=blue] weapon.offhand with minecraft:egg{blue:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}

## SOUND 2
execute at @s[scores={gCD=120}] run playsound minecraft:entity.shulker.open master @a[distance=..10] ~ ~ ~ 10000 1 1

## SOUND
## TITLE
title @s[scores={gCD=120}] actionbar  ["",{"text":"\u2605 LET'S ROLL \u2605","bold":true,"color":"gold"}]
title @s[scores={rotate=4,rotateSound=1}] actionbar ["",{"text":"STELLAR SONAR","bold":true,"color":"yellow"}]
title @s[scores={rotate=2,rotateSound=1}] actionbar ["",{"text":"STIM SPLASH","bold":true,"color":"green"}]
title @s[scores={rotate=3,rotateSound=1}] actionbar ["",{"text":"STING SHELL","bold":true,"color":"red"}]

## ITEM CLEAR
clear @s[scores={gCD=2..4}] minecraft:splash_potion
clear @s[scores={gCD=2..4}] minecraft:egg
clear @s[scores={gCD=2..4}] minecraft:snowball

## SCOREBOARD
scoreboard players set @s[scores={gCD=120..}] gCD 0
scoreboard players add @s[scores={gCD=1..}] gCD 1
scoreboard players set @s[scores={rotate=4..}] rotate 1
scoreboard players reset @s[scores={rotateSound=1..}] rotateSound
scoreboard players set @s[scores={g1=1..}] g1 0
scoreboard players set @s[scores={g2=1..}] g2 0
scoreboard players set @s[scores={g3=1..}] g3 0

## TEXT RANDOMIZER
title @s[scores={gCD=2,gRandom=1}] actionbar {"text":"HEADS UP!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=2}] actionbar {"text":"FIRE IN THE HOLE!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=3}] actionbar {"text":"BUTTERFINGERS!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=4}] actionbar {"text":"TAKE THIS!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=5}] actionbar {"text":"GRENADE OUT!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=6}] actionbar {"text":"WHAT'S UP DOC?!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=7}] actionbar {"text":"YA WANT SOME?!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=8}] actionbar {"text":"BWAHAHA!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=8}] actionbar {"text":"手榴弹！!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=10}] actionbar {"text":"EAT THIS!","bold":true,"color":"gold"}
title @s[scores={gCD=2,gRandom=11}] actionbar {"text":"YEET!","bold":true,"color":"gold"}

## SCOREBOARD RANDOMIZER
scoreboard players set @s[scores={gRandom=11..}] gRandom 1
scoreboard players add @s[nbt={Inventory:[{Slot:1b,id:"minecraft:honeycomb"}]}] gRandom 1

## DEATHCHECK
scoreboard players set @s[scores={deathcheck=1..,gCD=1..}] gCD 119




