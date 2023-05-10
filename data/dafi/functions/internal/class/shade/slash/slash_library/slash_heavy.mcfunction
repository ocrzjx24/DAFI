execute if entity @s[tag=dafi.blue] at @s run scoreboard players set @a[team=!blue,distance=..6.5] hp_dmg 2
execute if entity @s[tag=dafi.blue] at @s as @e[type=!player,team=!blue,distance=..6.5] run damage @s 8 minecraft:player_attack by @e[tag=dafi.blue,limit=1,sort=nearest] 
execute if entity @s[tag=dafi.blue] at @s as @e[team=!blue,distance=..6.5] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run particle sweep_attack ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=dafi.blue] at @s as @e[team=!blue,distance=..6.5] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 2 
execute if entity @s[tag=dafi.blue] at @s as @e[team=!blue,distance=..6.5] at @s run playsound entity.generic.hurt master @a ~ ~ ~ 0.5 0.8
execute if entity @s[tag=dafi.blue] at @s as @e[team=!blue,distance=..6.5,limit=1] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 0.3 2
execute if entity @s[tag=dafi.blue] at @s as @e[team=!blue,distance=..6.5] at @s run effect give @s blindness 1 0 true

execute if entity @s[tag=dafi.red] at @s run scoreboard players set @a[team=!red,distance=..6.5] hp_dmg 2
execute if entity @s[tag=dafi.red] at @s as @e[type=!player,team=!red,distance=..6.5] run damage @s 8 minecraft:player_attack by @e[tag=dafi.red,limit=1,sort=nearest] 
execute if entity @s[tag=dafi.red] at @s as @e[team=!red,distance=..6.5] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run particle sweep_attack ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=dafi.red] at @s as @e[team=!red,distance=..6.5] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 2 
execute if entity @s[tag=dafi.red] at @s as @e[team=!red,distance=..6.5] at @s run playsound entity.generic.hurt master @a ~ ~ ~ 0.5 0.8
execute if entity @s[tag=dafi.red] at @s as @e[team=!red,distance=..6.5,limit=1] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 0.1 2
execute if entity @s[tag=dafi.red] at @s as @e[team=!red,distance=..6.5] run effect give @s blindness 1 0 true

execute if entity @s[tag=dafi.ffa] at @s run scoreboard players set @a[team=!ffa,distance=..6.5] hp_dmg 2
execute if entity @s[tag=dafi.ffa] at @s as @e[type=!player,team=!ffa,distance=..6.5] run damage @s 8 minecraft:player_attack by @e[tag=dafi.ffa,limit=1,sort=nearest] 
execute if entity @s[tag=dafi.ffa] at @s as @e[team=!ffa,distance=..6.5] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.5 ~ run particle sweep_attack ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=dafi.ffa] at @s as @e[team=!ffa,distance=..6.5] at @s run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 2 
execute if entity @s[tag=dafi.ffa] at @s as @e[team=!ffa,distance=..6.5] at @s run playsound entity.generic.hurt master @a ~ ~ ~ 0.5 0.8 
execute if entity @s[tag=dafi.ffa] at @s as @e[team=!ffa,distance=..6.5,limit=1] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 0.1 2
execute if entity @s[tag=dafi.ffa] at @s as @e[team=!ffa,distance=..6.5] at @s run effect give @s blindness 1 0 true