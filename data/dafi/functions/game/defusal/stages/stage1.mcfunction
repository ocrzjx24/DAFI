## TITLES / SOUND
execute if score #cd defusal matches 100 run title @a[team=red] subtitle ["",{"text":"PLANT THE BOMB","bold":true,"color":"red"}]
execute if score #cd defusal matches 100 run title @a[team=blue] subtitle ["",{"text":"STOP THE PLANT","bold":true,"color":"red"}]
execute if score #cd defusal matches 100 run title @a[team=red] title ["",{"text":"DEFUSAL","bold":true,"color":"dark_red"}]
execute if score #cd defusal matches 100 run title @a[team=blue] title ["",{"text":"DEFUSAL","bold":true,"color":"dark_red"}]
execute if score #cd defusal matches 80 run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute if score #cd defusal matches 80 run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute if score #cd defusal matches 80 run title @a[team=blue] title ["",{"text":"3","bold":true,"color":"red"}]
execute if score #cd defusal matches 80 run title @a[team=red] title ["",{"text":"3","bold":true,"color":"red"}]
execute if score #cd defusal matches 60 run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute if score #cd defusal matches 60 run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute if score #cd defusal matches 60 run title @a[team=blue] title ["",{"text":"2","bold":true,"color":"gold"}]
execute if score #cd defusal matches 60 run title @a[team=red] title ["",{"text":"2","bold":true,"color":"gold"}]
execute if score #cd defusal matches 40 run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute if score #cd defusal matches 40 run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute if score #cd defusal matches 40 run title @a[team=blue] title ["",{"text":"1","bold":true,"color":"yellow"}]
execute if score #cd defusal matches 40 run title @a[team=red] title ["",{"text":"1","bold":true,"color":"yellow"}]
execute if score #cd defusal matches 20 run playsound minecraft:block.end_portal.spawn voice @a[team=blue] ~ ~ ~ 100
execute if score #cd defusal matches 20 run playsound minecraft:block.end_portal.spawn voice @a[team=red] ~ ~ ~ 100
execute if score #cd defusal matches 20 run title @a[team=blue] title ["",{"text":"GO","bold":true,"color":"green"}]
execute if score #cd defusal matches 20 run title @a[team=red] title ["",{"text":"GO","bold":true,"color":"green"}]
execute if score #cd defusal matches 1 run title @a[team=blue] clear 
execute if score #cd defusal matches 1 run title @a[team=red] clear 

## ITEM
execute if score #cd defusal matches 1 run item replace entity @a[team=red] hotbar.4 with creeper_spawn_egg{EntityTag:{id:"minecraft:creeper",NoAI:1b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:["bomb"]},display:{Name:'[{"text":"|","italic":false,"bold":true,"color":"red","obfuscated":true},{"text":" LA BOMBE ","obfuscated":false},{"text":"|"}]',Lore:['[{"text":"tinted glass -> 30 seconds","italic":false,"color":"white"}]','[{"text":"black stained glass -> 45 seconds","italic":false,"color":"white"}]']},CanPlaceOn:[tinted_glass,black_stained_glass]} 1
execute if score #cd defusal matches 1 run item replace entity @a[team=blue] hotbar.4 with shears{display:{Name:'[{"text":"|","italic":false,"bold":true,"color":"aqua","obfuscated":true},{"text":" defuse kit ","obfuscated":false},{"text":"|"}]'},CanDestroy:[daylight_detector]} 1

## SCOREBOARD 
execute if score #cd defusal matches 0 run scoreboard players set #stage defusal 2
execute if score #cd defusal matches 0 run scoreboard players set #cd defusal 1200