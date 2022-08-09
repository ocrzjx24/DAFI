scoreboard players add @s dafi.siege.bobberCheckLifetime 1
# execute if score @s dafi.sbsid = @e[type=marker,tag=dafi.siege.bobbing,limit=1] dafi.sbsid run say help
# execute if score @s bobberCheckLifetime matches 2 run scoreboard players set $strength delta.api.launch 15000
# execute if score @s bobberCheckLifetime matches 2 run say bruh
# execute if score @s bobberCheckLifetime matches 2 run scoreboard players reset $strength delta.api.launch
execute if score @s dafi.siege.bobberCheckLifetime matches 2.. run kill @s

# distance of 32 blocks