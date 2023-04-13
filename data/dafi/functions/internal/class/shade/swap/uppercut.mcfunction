##> dafi:internal/class/shade/swap/uppercut
# runs uppercut slash and applies motion to players
#
# callers:
# > dafi:internal/class/shade/swap/swapstart

scoreboard players set @s dafi.shade.swap.cooldown 80
execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
execute at @s run playsound item.trident.riptide_1 master @a ~ ~ ~ 1 1.5
execute at @s[team=blue,predicate=dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.3","dafi.blue","dafi.this"]}
execute at @s[team=red,predicate=dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.3","dafi.red","dafi.this"]}
execute at @s[team=ffa,predicate=dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.slash.3","dafi.ffa","dafi.this"]}
execute at @s[team=blue,predicate=!dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.4","dafi.blue","dafi.this"]}
execute at @s[team=red,predicate=!dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.shade.slash.4","dafi.red","dafi.this"]}
execute at @s[team=ffa,predicate=!dafi:is_sneaking] positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["dafi.shade.slash","dafi.slash.4","dafi.ffa","dafi.this"]}
tp @e[tag=dafi.this] @s
tag @e[tag=dafi.this] remove dafi.this

#execute store result score @s delta.addition.magnitude run data get entity @s Motion[1] -10000
#execute at @s rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
#execute at @s run summon armor_stand ~ ~-1 ~ {Tags:["dafi.this"]}
#ride @s mount @e[type=minecraft:armor_stand,tag=dafi.this,sort=nearest,limit=1]
#ride @s dismount
#kill @e[tag=dafi.this,type=armor_stand,sort=nearest,limit=1]
scoreboard players set @s[predicate=dafi:is_sneaking] delta.addition.magnitude 1000
execute at @s[predicate=dafi:is_sneaking] rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion
scoreboard players set @s[predicate=dafi:is_sneaking] delta.addition.magnitude 8000
execute at @s[predicate=dafi:is_sneaking] rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
scoreboard players set @s[predicate=!dafi:is_sneaking] delta.addition.magnitude 5000
execute at @s[predicate=!dafi:is_sneaking] rotated ~ -90 run function dafi:internal/mechanics/addition/add_motion

tag @s add dafi.shade.primed

