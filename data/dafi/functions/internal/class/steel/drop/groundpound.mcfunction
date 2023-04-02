scoreboard players set @s[tag=dafi.steel.drop.primed] delta.addition.magnitude 20000
execute at @s[tag=dafi.steel.drop.primed] rotated ~ -160 run function dafi:internal/mechanics/addition/add_motion
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~1000 ~ 100 0.7
execute at @s run particle block dirt ~ ~ ~ 4 0 4 1 200 normal
execute at @s run particle damage_indicator ~ ~ ~ 4 0 4 1 20 normal

execute at @s rotated ~ 0 positioned ^ ^ ^3.5 run function dafi:internal/class/steel/particle/particle2
execute at @s rotated ~ 0 positioned ^ ^0.5 ^3.5 run function dafi:internal/class/steel/particle/particle2
execute at @s run summon marker ~ ~ ~ {Tags:["dafi.steel.slash","dafi.steel.slash.1","dafi.red","dafi.this"]}
execute at @s run tp @e[tag=dafi.this] @s
tag @e[tag=dafi.this] remove dafi.this

execute if entity @s[team=blue] run scoreboard players set @a[team=!blue,distance=..6] delta.addition.magnitude 10000
execute if entity @s[team=red] run scoreboard players set @a[team=!red,distance=..6] delta.addition.magnitude 10000
execute if entity @s[team=ffa] run scoreboard players set @a[team=!red,distance=..6] delta.addition.magnitude 10000
scoreboard players reset @s[team=ffa] delta.addition.magnitude
execute as @s[team=blue] rotated as @s rotated ~ 90 as @a[team=!blue,distance=..6] run function dafi:internal/mechanics/addition/add_motion
execute as @s[team=red] rotated as @s rotated ~ 90 as @a[team=!red,distance=..6] run function dafi:internal/mechanics/addition/add_motion
execute as @s[team=ffa] rotated as @s rotated ~ 90 as @a[distance=..6] run function dafi:internal/mechanics/addition/add_motion
#tag @s[tag=dafi.steel.drop.primed] add dafi.steel.drop.primed2
#tag @s[tag=dafi.steel.drop.primed3] remove dafi.steel.drop.primed2
#tag @s[tag=!dafi.steel.drop.primed] remove dafi.steel.drop.primed3
tag @s remove dafi.steel.drop.primed
