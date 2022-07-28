tag @s add dafi.siege.bobbing

execute at @s run particle smoke ~ ~ ~ 0.05 0.05 0.05 0.1 3 force
# execute if entity @s[nbt={OnGround:1b}] run function dafi:class/siege/bobber/particle

execute at @s run summon marker ~ ~ ~ {Tags:["dafi.siege.bobbercheck","dafi.siege.markerunprocessed"]}
execute at @s as @e[type=marker,tag=dafi.siege.bobbercheck,tag=dafi.siege.markerunprocessed,sort=nearest] store result score @s sbsid run scoreboard players get @e[type=fishing_bobber,tag=dafi.siege.bobbing,limit=1] sbsid 
execute at @s as @e[type=marker,tag=dafi.siege.bobbercheck,tag=dafi.siege.markerunprocessed,sort=nearest,limit=1] run tag @s remove dafi.siege.markerunprocessed
# tp @e[tag=dafi.cock] @s 
# execute as @e[type=marker,tag=dafi.siege.bobbercheck,sort=nearest,limit=1] run say help
# execute as @e[type=marker,tag=dafi.siege.bobbercheck,scores={bobberCheckLifetime=1},sort=nearest] if score @s sbsid = @e[type=marker,tag=dafi.siege.bobbing,limit=1] sbsid run say help

tag @s remove dafi.siege.bobbing
