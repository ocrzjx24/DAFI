execute at @s run tag @e[type=arrow,tag=!dafi.arrow.processed,sort=nearest,limit=1] add dafi.arrow.processing

execute as @e[tag=dafi.arrow.processing] store result score @s dafi.arrow.x run data get entity @s Motion[0] 1000 
execute as @e[tag=dafi.arrow.processing] store result score @s dafi.arrow.y run data get entity @s Motion[1] 1000 
execute as @e[tag=dafi.arrow.processing] store result score @s dafi.arrow.z run data get entity @s Motion[2] 1000 

# clone; create a copy of the original arrow which functions the same way (currently only copies motion)

#execute as @e[tag=dafi.arrow.processing] at @s run summon firework_rocket ~ ~ ~ {Tags:["dafi.arrow.clone","dafi.arrow.processing"]}

#scoreboard players operation @e[tag=dafi.arrow.processing,tag=dafi.arrow.clone] dafi.arrow.x = @e[tag=dafi.arrow.processing,tag=!dafi.arrow.clone,limit=1] dafi.arrow.x
#scoreboard players operation @e[tag=dafi.arrow.processing,tag=dafi.arrow.clone] dafi.arrow.y = @e[tag=dafi.arrow.processing,tag=!dafi.arrow.clone,limit=1] dafi.arrow.y
#scoreboard players operation @e[tag=dafi.arrow.processing,tag=dafi.arrow.clone] dafi.arrow.z = @e[tag=dafi.arrow.processing,tag=!dafi.arrow.clone,limit=1] dafi.arrow.z

#kill @e[tag=dafi.arrow.processing,tag=!dafi.arrow.clone]

#tag @e[tag=dafi.arrow.clone] remove dafi.arrow.clone

#execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[0] double 0.0005 run scoreboard players get @s dafi.arrow.x
#execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[1] double 0.0005 run scoreboard players get @s dafi.arrow.y
#execute as @e[tag=dafi.arrow.processing,limit=1] store result entity @s Motion[2] double 0.0005 run scoreboard players get @s dafi.arrow.z

# more data modify

data modify entity @e[tag=dafi.arrow.processing,limit=1] crit set value 1
data modify entity @e[tag=dafi.arrow.processing,limit=1] pickup set value 0
data modify entity @e[tag=dafi.arrow.processing,limit=1] damage set value 20

#data modify entity @e[tag=dafi.arrow.processing,limit=1] LifeTime set value 120
#data modify entity @e[tag=dafi.arrow.processing,limit=1] PierceLevel set value 5
execute if score #universal dafi.arrownogravity matches 1 run data modify entity @e[tag=dafi.arrow.processing,limit=1] NoGravity set value 1

# team assignment

execute if entity @s[team=red] run tag @e[tag=dafi.arrow.processing] add dafi.arrow.red
execute if entity @s[team=blue] run tag @e[tag=dafi.arrow.processing] add dafi.arrow.blue

# class assignment
execute if entity @s[tag=dafi.siege,scores={dafi.siege.mode=0}] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/siege/arrow/arrow_initialize
execute if entity @s[tag=dafi.siege,scores={dafi.siege.mode=1}] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/siege/arrow/minigun_initialize
execute if entity @s[tag=dafi.saint] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/saint/arrow/arrow_initialize
execute if entity @s[tag=dafi.slay] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/slay/arrow/arrow_initialize
execute if entity @s[tag=dafi.sting] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/sting/arrow/arrow_initialize
execute if entity @s[tag=dafi.soul] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/soul/arrow/arrow_initialize
execute if entity @s[tag=dafi.steel] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/steel/arrow/arrow_initialize
execute if entity @s[tag=dafi.storm] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/storm/arrow/arrow_initialize
execute if entity @s[tag=dafi.shade] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/shade/arrow/arrow_initialize
execute if entity @s[tag=dafi.swamp] as @e[tag=dafi.arrow.processing] at @s run function dafi:internal/class/swamp/arrow/arrow_initialize
#execute if score #universal dafi.arrownogravity matches 1 run tag @e[tag=dafi.arrow.processing] add dafi.arrow.nogravity

# if it should explode
execute unless score @s dafi.siege.mode matches 1 run tag @e[tag=dafi.arrow.processing] add dafi.arrow.explode

# tag processing
tag @e[tag=dafi.arrow.processing] add dafi.arrow.processed
tag @e[tag=dafi.arrow.processing] remove dafi.arrow.processing