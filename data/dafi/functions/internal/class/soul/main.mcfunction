## PASSIVE
execute store result score @s dafi.soul.health run data get entity @s Health

execute if score @s dafi.soul.health matches 16..19 run effect give @s speed 1 3 false
execute if score @s dafi.soul.health matches 12..15 run effect give @s speed 1 4 false
execute if score @s dafi.soul.health matches 8..11 run effect give @s speed 1 5 false
execute if score @s dafi.soul.health matches 4..7 run effect give @s speed 1 6 false
execute if score @s dafi.soul.health matches 0..3 run effect give @s speed 1 7 false

execute if data entity @s[tag=dafi.soul.swap.primed] {OnGround:1b} at @s run function dafi:internal/class/soul/swap/summon 
execute if data entity @s[tag=dafi.soul.swap.primed] {OnGround:1b} run tag @s remove dafi.soul.swap.primed


## dafi.soul.cd HIT
execute if score @s dafi.soul.cd matches 1 at @s run playsound minecraft:entity.blaze.ambient master @s[scores={dafi.soul.cd=1}] ~ ~ ~ 100000 2 1
execute if score @s dafi.soul.cd matches 1 at @s run effect give @s[scores={dafi.soul.cd=1}] minecraft:regeneration 1 10 true
#execute if score @s dafi.soul.cd matches 1 at @s run effect give @s[scores={dafi.soul.cd=1}] minecraft:speed 2 5 true
execute if score @s dafi.soul.cd matches 1 at @s run particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.1 10 normal
execute if score @s dafi.soul.cd matches 1.. run title @s actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"#ffd814"}
execute if score @s dafi.soul.cd matches 1.. run scoreboard players reset @s dafi.soul.cd

## DASH
execute if score @s dafi.soul.dropgoldenhoe matches 1 unless score @s dafi.soul.drop.cooldown matches 1.. run scoreboard players set @s dafi.soul.drop.cooldown 1
execute if score @s dafi.soul.dropgoldenhoe matches 1.. run scoreboard players reset @s dafi.soul.dropgoldenhoe
execute if score @s dafi.soul.drop.cooldown matches 1 at @s run function dafi:internal/class/soul/drop
execute if score @s dafi.soul.drop.cooldown matches 1 run title @s actionbar {"text":"r/WOOSH","bold":true,"color":"#ffd814"}
#execute if score @s dafi.soul.drop.cooldown matches 3 run effect clear @s levitation
execute if score @s dafi.soul.drop.cooldown matches 10 run title @s actionbar {"text":"","bold":true,"color":"yellow"}
execute if score @s dafi.soul.drop.cooldown matches 1.. run scoreboard players add @s dafi.soul.drop.cooldown 1
execute if score @s dafi.soul.drop.cooldown matches 1..20 at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.1 1 force
execute if score @s dafi.soul.drop.cooldown matches 61 at @s run playsound entity.blaze.shoot master @s ~ ~ ~ 0.4 2 0.4
#execute if score @s dafi.soul.drop.cooldown matches 61 at @s run item replace entity @s hotbar.1 with golden_hoe{mainhand:1,display:{Name:'[{"text":"Soul ","italic":false,"color":"#ffd814","bold":true},{"text":"Reaver","color":"aqua"},{"text":" "},{"text":"| ","color":"gray"},{"text":"[Q]","color":"white","bold":false}]',Lore:['[{"text":"For millennia, all they could do was run. Even in death, they run.","italic":false}]']},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:100,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8,Operation:0,UUID:[I;1022498064,1087262705,1008143892,1256304346]}],HideFlags:3} 1
execute if score @s dafi.soul.drop.cooldown matches 61.. run scoreboard players reset @s dafi.soul.drop.cooldown
execute if score @s dafi.soul.drop.cooldown matches 1.. run scoreboard players add @s dafi.soul.drop.cooldown 1
## HEALTH TRADE

## PARTICLES
execute at @s run particle minecraft:soul ~ ~ ~ 0.2 0.3 0.2 0.001 1

## dafi.mechanics.killcheck
execute if score @s dafi.mechanics.killcheck matches 1 run effect give @s minecraft:speed 3 5 true
execute if score @s dafi.mechanics.killcheck matches 1 run effect give @s minecraft:regeneration 1 9 true
execute if score @s dafi.mechanics.killcheck matches 1 run title @s actionbar {"text":"\u2605 SOULSTEAL \u2605","bold":true,"color":"#ffd814"}

## KILL
#kill @e[type=item,nbt={Item:{id:"minecraft:golden_hoe"}}]