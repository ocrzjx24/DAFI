execute as @s[team=red] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["redSword","swordCast"],Marker:1b,Invisible:1b}
execute as @s[team=blue] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["blueSword","swordCast"],Marker:1b,Invisible:1b}
execute as @s[team=red] at @s run tp @e[tag=redSword,limit=1,sort=nearest] @s
execute as @s[team=blue] at @s run tp @e[tag=blueSword,limit=1,sort=nearest] @s
execute as @s[team=red] at @s run tp @e[tag=redSword,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s[team=blue] at @s run tp @e[tag=blueSword,limit=1,sort=nearest] ~ ~1.5 ~
