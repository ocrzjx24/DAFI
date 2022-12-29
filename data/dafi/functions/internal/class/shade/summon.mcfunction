execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword1","dafi.shade.swordCast","this"]}
execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword2","dafi.shade.swordCast","this"]}
execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword3","dafi.shade.swordCast","this"]}

execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword1","dafi.shade.swordCast","this"]}
execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword2","dafi.shade.swordCast","this"]}
execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword3","dafi.shade.swordCast","this"]}

execute as @s at @s run tp @e[tag=this,limit=3,sort=nearest] @s
tag @e[tag=this] remove this

execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword1,limit=1,sort=nearest] ^ ^ ^ facing ^-0.1 ^ ^1
execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword2,limit=1,sort=nearest] ^ ^ ^ facing ^ ^ ^1
execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword3,limit=1,sort=nearest] ^ ^ ^ facing ^0.1 ^ ^1

