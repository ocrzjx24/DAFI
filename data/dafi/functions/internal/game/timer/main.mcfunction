# CLOCK
kill @e[type=item,nbt={Item:{id:"minecraft:clock"}}]
execute as @a[scores={gamestart=80}] run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute as @a[scores={gamestart=100}] run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute as @a[scores={gamestart=120}] run playsound minecraft:ui.button.click voice @a[team=blue] ~ ~ ~ 100
execute if entity @a[scores={gamestart=20}] run stopsound @a[team=blue]
execute as @a[scores={gamestart=80}] run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute as @a[scores={gamestart=100}] run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute as @a[scores={gamestart=120}] run playsound minecraft:ui.button.click voice @a[team=red] ~ ~ ~ 100
execute if entity @a[scores={gamestart=20}] run stopsound @a[team=red]

# CLOCK
execute if entity @a[scores={gamestart=1..}] run scoreboard players add @a[scores={gamestart=1..}] gamestart 1
execute if entity @a[scores={gamestart=20}] run title @a[team=blue] subtitle ["",{"text":"DAFI ARENA","bold":true,"color":"yellow"}]
execute if entity @a[scores={gamestart=20}] run title @a[team=blue] title ["",{"text":"TEAM DEATHMATCH","bold":true,"color":"gold"}]
execute if entity @a[scores={gamestart=80}] run title @a[team=blue] reset
execute if entity @a[scores={gamestart=80}] run title @a[team=blue] title ["",{"text":"3","bold":true,"color":"red"}]
execute if entity @a[scores={gamestart=100}] run title @a[team=blue] title ["",{"text":"2","bold":true,"color":"gold"}]
execute if entity @a[scores={gamestart=120}] run title @a[team=blue] title ["",{"text":"1","bold":true,"color":"yellow"}]
execute if entity @a[scores={gamestart=140}] run title @a[team=blue] title ["",{"text":"GO","bold":true,"color":"green"}]
execute as @a[scores={gamestart=141}] run playsound minecraft:block.end_portal.spawn voice @a[team=blue] ~ ~ ~ 100 1
execute if entity @a[scores={gamestart=20}] run title @a[team=red] subtitle ["",{"text":"DAFI ARENA","bold":true,"color":"yellow"}]
execute if entity @a[scores={gamestart=20}] run title @a[team=red] title ["",{"text":"TEAM DEATHMATCH","bold":true,"color":"gold"}]
execute if entity @a[scores={gamestart=80}] run title @a[team=red] reset
execute if entity @a[scores={gamestart=80}] run title @a[team=red] title ["",{"text":"3","bold":true,"color":"red"}]
execute if entity @a[scores={gamestart=100}] run title @a[team=red] title ["",{"text":"2","bold":true,"color":"gold"}]
execute if entity @a[scores={gamestart=120}] run title @a[team=red] title ["",{"text":"1","bold":true,"color":"yellow"}]
execute if entity @a[scores={gamestart=140}] run title @a[team=red] title ["",{"text":"GO","bold":true,"color":"green"}]
execute as @a[scores={gamestart=141}] run playsound minecraft:block.end_portal.spawn voice @a[team=red] ~ ~ ~ 100 1
execute if entity @a[scores={gamestart=151..}] run scoreboard players reset @a gamestart