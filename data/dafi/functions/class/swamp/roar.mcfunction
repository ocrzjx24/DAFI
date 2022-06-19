# execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["redSword","swordCast"],Marker:1b,Invisible:1b}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["roarCast"]}
execute at @s run tp @e[tag=roarCast,limit=1,sort=nearest] @s
execute at @s run tp @e[tag=roarCast,limit=1,sort=nearest] ~ ~1.5 ~
