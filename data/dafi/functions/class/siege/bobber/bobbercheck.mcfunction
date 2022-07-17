scoreboard players add @s bobberCheckLifetime 1
# execute if score @s sbsid = @e[type=marker,tag=dafi.siege.bobbing,limit=1] sbsid run say help
# execute if score @s bobberCheckLifetime matches 2 run scoreboard players set $strength delta.api.launch 15000
# execute if score @s bobberCheckLifetime matches 2 run say bruh
# execute if score @s bobberCheckLifetime matches 2 run scoreboard players reset $strength delta.api.launch
execute if score @s bobberCheckLifetime matches 2.. run kill @s

# distance of 32 blocks