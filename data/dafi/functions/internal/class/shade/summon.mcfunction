#playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1.2
execute anchored eyes run particle minecraft:sweep_attack ^ ^-0.25 ^3 0 0 0 1 1 normal
playsound minecraft:block.soul_sand.place master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.sheep.shear master @a ~ ~ ~ 1 1
playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 1 1
playsound minecraft:block.note_block.snare master @a ~ ~ ~ 1 0.5

execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword1","dafi.shade.swordCast","this"]}
execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword2","dafi.shade.swordCast","this"]}
execute as @s[team=red] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.redSword","dafi.shade.sword3","dafi.shade.swordCast","this"]}

execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword1","dafi.shade.swordCast","this"]}
execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword2","dafi.shade.swordCast","this"]}
execute as @s[team=blue] at @s run summon minecraft:marker ~ ~ ~ {Tags:["dafi.shade.blueSword","dafi.shade.sword3","dafi.shade.swordCast","this"]}

execute as @s at @s run tp @e[tag=this,limit=3,sort=nearest] @s
tag @e[tag=this] remove this

execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword1,limit=1,sort=nearest] ^ ^ ^ facing ^-0.2 ^ ^1
execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword2,limit=1,sort=nearest] ^ ^ ^ facing ^ ^ ^1
execute as @s at @s anchored eyes run tp @e[tag=dafi.shade.sword3,limit=1,sort=nearest] ^ ^ ^ facing ^0.2 ^ ^1

