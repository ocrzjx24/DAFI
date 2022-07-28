tag @s add dafi.sting.glshot

execute at @s run kill @e[type=arrow,nbt={Color:0},limit=1,sort=nearest]

scoreboard players set @s c4CD 1 

execute if entity @s[team=red] at @s anchored eyes run summon magma_cube ^ ^ ^-0.5 {Tags:["C4"],Team:"red"}
execute if entity @s[team=blue] at @s anchored eyes run summon magma_cube ^ ^ ^-0.5 {Tags:["C4"],Team:"blue"}
execute as @e[tag=C4] at @s run function dafi:class/sting/c4/applymotion

tag @s remove dafi.sting.glshot