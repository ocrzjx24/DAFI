# execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["redSword","swordCast"],Marker:1b,Invisible:1b}
execute at @s[team=red] run summon minecraft:armor_stand ~ ~ ~ {Tags:["roarCast","redRoar"],Marker:1b,Invisible:1b} 
execute at @s[team=blue] run summon minecraft:armor_stand ~ ~ ~ {Tags:["roarCast","blueRoar"],Marker:1b,Invisible:1b} 
execute as @e[tag=roarCast,limit=1,sort=nearest] run tp @s ~ ~1.3 ~ facing entity @e[type=armor_stand,limit=1] eyes
# fix
execute at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 10 1
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 10 0.7
# run tp @e[tag=roarCast,limit=1,sort=nearest] ~ ~1.5 ~

