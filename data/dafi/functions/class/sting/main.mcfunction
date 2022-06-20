## kaboom
execute if predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 run scoreboard players set @s c4CD 1
execute if score @s c4CD matches 1 at @s run function dafi:class/sting/c4/summonc4
execute if score @s c4CD matches 1 run item replace entity @s hotbar.1 with stick{display:{Name:'[{"text":"Wizard\'s","italic":false,"color":"#ff9900","bold":true},{"text":" ","color":"gold"},{"text":"Wand","color":"#ffcc00"}]',Lore:['[{"text":"please change this later","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:fire_aspect,lvl:5}]} 1
execute if score @s c4CD matches 180.. run clear @s stick{Enchantments:[{id:fire_aspect,lvl:5}]} 1
execute if score @s c4CD matches 180.. run item replace entity @s hotbar.1 with blaze_rod{display:{Name:'[{"text":"Wizard\'s","italic":false,"color":"#ff9900","bold":true},{"text":" ","color":"gold"},{"text":"Wand","color":"#ffcc00"}]',Lore:['[{"text":"please change this later","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:fire_aspect,lvl:5}]} 1
execute if score @s c4CD matches 180.. run scoreboard players reset @s c4CD
execute if score @s c4CD matches 1.. run scoreboard players add @s c4CD 1

## ROTATE GRENADES
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 run item replace entity @s hotbar.1 with blaze_rod{display:{Name:'[{"text":"Wizard\'s","italic":false,"color":"#ff9900","bold":true},{"text":" ","color":"gold"},{"text":"Wand","color":"#ffcc00"}]',Lore:['[{"text":"please change this later","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:fire_aspect,lvl:5}]} 1
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 run scoreboard players add @s gType 1
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 run tag @s remove offhandProcessed
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1 1
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 1 1



execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 run scoreboard players add @s gType 1
execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 run tag @s remove offhandProcessed
execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 at @s run playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1 1
execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 at @s run playsound minecraft:item.armor.equip_turtle master @s ~ ~ ~ 1 1 1


execute if score @s gType matches 2.. run scoreboard players set @s gType 0

execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 if score @s gType matches 0 run title @s actionbar ["",{"text":"PONDERING ORB","bold":true,"color":"yellow"}]
execute unless predicate dafi:is_sneaking if score @s dropStick matches 1 if score @s gType matches 1 run title @s actionbar ["",{"text":"WYVERN EGG","bold":true,"color":"red"}]
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 if score @s gType matches 0 run title @s actionbar ["",{"text":"PONDERING ORB","bold":true,"color":"yellow"}]
execute unless predicate dafi:is_sneaking if score @s dropBlazeRod matches 1 if score @s gType matches 1 run title @s actionbar ["",{"text":"WYVERN EGG","bold":true,"color":"red"}]

execute if score @s dropBlazeRod matches 1.. run scoreboard players reset @s dropBlazeRod
execute if score @s dropStick matches 1.. run scoreboard players reset @s dropStick


## GRENADE COOLDOWNS
execute if score @s useEggCheck matches 1 run scoreboard players set @s gCD 1
execute if score @s useEggCheck matches 1 run scoreboard players reset @s offhandReady
execute if score @s useEggCheck matches 1.. run scoreboard players reset @s useEggCheck
execute if score @s useSnowballCheck matches 1 run scoreboard players reset @s offhandReady
execute if score @s useSnowballCheck matches 1 run scoreboard players set @s gCD 1
execute if score @s useSnowballCheck matches 1.. run scoreboard players reset @s useSnowballCheck

## gCD
execute if score @s gCD matches 120 run playsound minecraft:entity.shulker.open master @s ~ ~ ~ 12000 1 1
execute if score @s gCD matches 120 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s gCD matches 120 run scoreboard players set @s offhandReady 1
execute if score @s gCD matches 120 run tag @s remove offhandProcessed
execute if score @s gCD matches 120.. run scoreboard players reset @s gCD
execute if score @s gCD matches 1.. run scoreboard players add @s gCD 1



## OFFHAND READY
function dafi:class/sting/offhand

## KILL ITEM
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}}]

## DEATHCHECK
execute if score @s deathcheck matches 1 if score @s gCD matches 1.. run scoreboard players set @s gCD 119

## IM NOT OPTIMIZING THIS SHIT
#function dafi:class/sting/sneak

## ROTATE ITEM
#item replace entity @s[scores={gCD=0,rotate=2},team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
#item replace entity @s[scores={gCD=0,rotate=2},team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
#item replace entity @s[scores={gCD=0,rotate=2,rotateSound=1}] weapon.offhand with minecraft:splash_potion{CustomPotionEffects:[{Id:26,Amplifier:0,Duration:160,ShowParticles:0b}],CustomPotionColor:16300586,display:{Name:'[{"text":"Stim Splash","italic":false,"color":"green"}]'},HideFlags:63}
#item replace entity @s[scores={gCD=0,rotate=3},team=red] weapon.offhand with minecraft:egg{red:2,display:{Name:'[{"text":"Wyvern Egg","italic":false,"color":"red"}]'}}
#item replace entity @s[scores={gCD=0,rotate=3},team=blue] weapon.offhand with minecraft:egg{blue:2,display:{Name:'[{"text":"Wyvern Egg","italic":false,"color":"red"}]'}}

## SOUND 1
# execute at @s[scores={rotateSound=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @s[scores={rotateSound=1}] ~ ~ ~ 10 1 1
# execute at @s[scores={rotateSound=1}] run playsound minecraft:item.armor.equip_turtle master @s[scores={rotateSound=1}] ~ ~ ~ 10 1 1
#execute at @s[scores={gCD=1}] run playsound minecraft:entity.arrow.shoot master @a[distance=..10] ~ ~ ~ 10 1 1

## SCOREBOARD 1
#scoreboard players add @s[scores={g1=1}] gCD 1
# scoreboard players add @s[scores={g2=1}] gCD 1
#scoreboard players add @s[scores={g3=1}] gCD 1

## ITEM 2
#item replace entity @s[scores={gCD=120,rotate=1},team=red] weapon.offhand with minecraft:snowball{red:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
#item replace entity @s[scores={gCD=120,rotate=1},team=blue] weapon.offhand with minecraft:snowball{blue:1,display:{Name:'[{"text":"Pondering Orb","italic":false,"color":"yellow"}]'}}
# item replace entity @s[scores={gCD=120,rotate=2}] weapon.offhand with minecraft:splash_potion{CustomPotionEffects:[{Id:26,Amplifier:0,Duration:160,ShowParticles:0b}],CustomPotionColor:16300586,display:{Name:'[{"text":"Stim Splash","italic":false,"color":"green"}]'},HideFlags:63}
#item replace entity @s[scores={gCD=120,rotate=2},team=red] weapon.offhand with minecraft:egg{red:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}
#item replace entity @s[scores={gCD=120,rotate=2},team=blue] weapon.offhand with minecraft:egg{blue:2,display:{Name:'[{"text":"Sting Shell","italic":false,"color":"red"}]'}}

## SOUND 2
#execute at @s[scores={gCD=120}] run playsound minecraft:entity.shulker.open master @a[distance=..10] ~ ~ ~ 12000 1 1

## SOUND
## TITLE
#title @s[scores={gCD=120}] actionbar  ["",{"text":"\u2605 LET'S ROLL \u2605","bold":true,"color":"gold"}]
#title @s[scores={rotate=2,gCD=0}] actionbar ["",{"text":"PONDERING ORB","bold":true,"color":"yellow"}]
# title @s[scores={rotate=2,rotateSound=1}] actionbar ["",{"text":"STIM SPLASH","bold":true,"color":"green"}]
#title @s[scores={rotate=3,gCD=0}] actionbar ["",{"text":"WYVERN EGG","bold":true,"color":"red"}]

## ITEM CLEAR
#clear @s[scores={gCD=1..4}] minecraft:splash_potion
#clear @s[scores={gCD=1..4}] minecraft:egg
#clear @s[scores={gCD=1..4}] minecraft:snowball

## SCOREBOARD
#scoreboard players set @s[scores={gCD=120..}] gCD 0
#scoreboard players add @s[scores={gCD=1..}] gCD 1
#scoreboard players set @s[scores={rotate=3..}] rotate 1
# scoreboard players reset @s[scores={rotateSound=1..}] rotateSound
#scoreboard players set @s[scores={g1=1..}] g1 0
#scoreboard players set @s[scores={g2=1..}] g2 0
#scoreboard players set @s[scores={g3=1..}] g3 0

## TEXT RANDOMIZER
#title @s[scores={rotate=1,gCD=2,gRandom=1}] actionbar {"text":"LIGHT 'EM UP! (LITERALLY)","bold":true,"color":"gold"}
#title @s[scores={rotate=1,gCD=2,gRandom=2}] actionbar {"text":"闪耀!","bold":true,"color":"gold"}
#title @s[scores={rotate=1,gCD=2,gRandom=3}] actionbar {"text":"I'VE GOT WALLS!","bold":true,"color":"gold"}
#title @s[scores={rotate=1,gCD=2,gRandom=4}] actionbar {"text":"WHERE'S THE PARTY?","bold":true,"color":"gold"}
#title @s[scores={rotate=2,gCD=2,gRandom=1}] actionbar {"text":"MOLLY!","bold":true,"color":"gold"}
#title @s[scores={rotate=2,gCD=2,gRandom=2}] actionbar {"text":"莫洛托夫!","bold":true,"color":"gold"}
#title @s[scores={rotate=2,gCD=2,gRandom=3}] actionbar {"text":"COMING IN HOT!","bold":true,"color":"gold"}
#title @s[scores={rotate=2,gCD=2,gRandom=4}] actionbar {"text":"WHAT'S UP, DOC?","bold":true,"color":"gold"}

## SCOREBOARD RANDOMIZER
#scoreboard players set @s[scores={gRandom=4..}] gRandom 0
# scoreboard players add @s[nbt={Inventory:[{Slot:1b,id:"minecraft:honeycomb"}]}] gRandom 1
#scoreboard players add @s gRandom 1

## DEATHCHECK
#scoreboard players set @s[scores={deathcheck=1..,gCD=1..}] gCD 119



