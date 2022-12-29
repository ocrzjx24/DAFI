#place totem
execute if score @s dafi.swamp.dropNetheriteAxe matches 1 at @s run function dafi:internal/class/swamp/drop
execute if score @s dafi.swamp.dropNetheriteAxe matches 1 at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute if score @s dafi.swamp.dropNetheriteAxe matches 30 at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
execute if score @s dafi.swamp.dropNetheriteAxe matches 30.. run clear @s wooden_axe
execute if score @s dafi.swamp.dropNetheriteAxe matches 30 run item replace entity @s hotbar.1 with netherite_axe{mainhand:1,display:{Name:'[{"text":"Maul","italic":false,"color":"dark_red","bold":true},{"text":" ","color":"#ffd814"},{"text":"| ","color":"gray"},{"text":"[Q]/[RMB]","color":"white","bold":false}]',Lore:['[{"text":"Thousands disappeared. None were ever found.","italic":false}]']},Unbreakable:1,HideFlags:3,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1014886342,1084823496,1064780877,1393545524]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.2,Operation:2,UUID:[I;1014886342,1084823496,1064780877,1393545524]}],swap:1} 1
execute if score @s dafi.swamp.dropNetheriteAxe matches 30.. run scoreboard players reset @s dafi.swamp.dropNetheriteAxe
execute if score @s dafi.swamp.dropNetheriteAxe matches 1.. run scoreboard players add @s dafi.swamp.dropNetheriteAxe 1

#TEXT RANDOMIZER
execute if score @s dafi.swamp.TPTrigger matches 10 if score @s dafi.swamp.random matches 1 run tellraw @s {"text":"RUN.","bold":true,"color":"dark_red"}
execute if score @s dafi.swamp.TPTrigger matches 10 if score @s dafi.swamp.random matches 2 run tellraw @s {"text":"FLEE.","bold":true,"color":"dark_red"}
execute if score @s dafi.swamp.TPTrigger matches 10 if score @s dafi.swamp.random matches 3 run tellraw @s {"text":"HIDE.","bold":true,"color":"dark_red"}
execute if score @s dafi.swamp.TPTrigger matches 10 if score @s dafi.swamp.random matches 4 run tellraw @s {"text":"DIE.","bold":true,"color":"dark_red"}

#SCOREBOARD RANDOMIZER
execute if score @s dafi.swamp.random matches 4.. run scoreboard players set @s dafi.swamp.random 1
scoreboard players add @s dafi.swamp.random 1

# scoreboard players add @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] dafi.swamp.random 1

## CROUCH VS UPRIGHT
execute if score @s dafi.swamp.useEnderPearl matches 1.. at @s run scoreboard players set @s dafi.swamp.TPTrigger 1
execute if score @s dafi.swamp.useEnderPearl matches 1.. run scoreboard players set @s dafi.swamp.useEnderPearl 0

## TELEPORT
execute if score @s dafi.swamp.TPTrigger matches 1 run scoreboard players reset @s dafi.offhandReady
execute if score @s dafi.swamp.TPTrigger matches 1 at @s run playsound minecraft:entity.skeleton.converted_to_stray master @a[distance=..10] ~ ~ ~ 100 1 1
execute if score @s dafi.swamp.TPTrigger matches 1 at @s run effect give @s minecraft:darkness 2 1 true
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 1
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.5 1
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..10] ~ ~ ~ 1 0.7
# execute if score @s dafi.swamp.TPTrigger matches 11 at @s run effect give @s minecraft:night_vision 1 1 true
# execute if score @s dafi.swamp.TPTrigger matches 20 at @s run effect clear @s[scores={dafi.swamp.TPTrigger=20}] slowness
# execute if score @s dafi.swamp.TPTrigger matches 1..30 run scoreboard players set @s slowCheck 1
# execute if score @s dafi.swamp.TPTrigger matches 5 run scoreboard players set @s slow 25
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 1 200 force
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run particle minecraft:block redstone_block ~ ~ ~ 0.5 0.5 0.5 1 100 force
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run effect clear @s darkness
execute if score @s dafi.swamp.TPTrigger matches 10 at @s run function dafi:internal/class/swamp/teleport

execute if score @s dafi.swamp.TPTrigger matches 130 run tellraw @s {"text":"\u2605 FEAR ME. \u2605","bold":true,"color":"dark_red"}
execute if score @s dafi.swamp.TPTrigger matches 130 run title @s actionbar ["",{"text":"[RMB] ","bold":true,"color":"gold"},{"text":"READY","color":"green"}]
execute if score @s dafi.swamp.TPTrigger matches 130 at @s run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 2
execute if score @s dafi.swamp.TPTrigger matches 130 at @s run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2

execute if score @s dafi.swamp.TPTrigger matches 130 run scoreboard players set @s dafi.offhandReady 1
execute if score @s dafi.swamp.TPTrigger matches 130 run tag @s remove dafi.offhandProcessed
execute if score @s dafi.swamp.TPTrigger matches 130.. run scoreboard players reset @s dafi.swamp.TPTrigger
execute if score @s dafi.swamp.TPTrigger matches 1.. run scoreboard players add @s dafi.swamp.TPTrigger 1

## MIRE
execute at @s[predicate=dafi:is_sneaking] run function dafi:internal/class/swamp/particles

## OFFHAND READY
function dafi:internal/class/swamp/offhand

## KILL 
execute as @e[type=armor_stand,tag=dafi.swamp.TP] if score @s dafi.sbsid = @a[scores={dafi.deathcheck=1},limit=1] dafi.sbsid run kill @s
kill @e[type=ender_pearl]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}}]



















