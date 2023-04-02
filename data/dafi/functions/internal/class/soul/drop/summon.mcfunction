#scoreboard players set @s delta.addition.magnitude 20000
#execute at @s rotated ~ -10 run function dafi:internal/mechanics/addition/add_motion

execute if entity @s[team=red] run playsound minecraft:entity.zombie_villager.cure master @a[team=red] ~ ~100 ~ 10 2
execute if entity @s[team=blue] run playsound minecraft:entity.zombie_villager.cure master @a[team=blue] ~ ~100 ~ 10 2

execute at @s[team=red] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.red"]}
execute at @s[team=red] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.red","dafi.soul.swap.soul_circle.extra"]}

execute at @s[team=blue] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.blue"]}
execute at @s[team=blue] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.blue","dafi.soul.swap.soul_circle.extra"]}

execute at @s[team=ffa] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.ffa"]}
execute at @s[team=ffa] run summon marker ~ ~ ~ {Tags:["dafi.soul.swap.soul_circle","dafi.soul.swap.soul_circle.ffa","dafi.soul.swap.soul_circle.extra"]}

