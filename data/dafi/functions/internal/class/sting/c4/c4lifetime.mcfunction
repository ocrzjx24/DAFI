scoreboard players add @s dafi.sting.c4Life 1

tag @s add dafi.sting.c4lifetime

# execute if score @s dafi.sting.c4Life matches 1 at @s run function dafi:internal/class/sting/c4/applymotion
execute if score @s dafi.sting.c4Life matches 1 run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.8 1.6

execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. store result score $x dafi.sting.c4Life run data get entity @s Motion[0] 1000
execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. store result score $y dafi.sting.c4Life run data get entity @s Motion[1] 1000
execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. store result score $z dafi.sting.c4Life run data get entity @s Motion[2] 1000

execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. if score $x dafi.sting.c4Life matches 0 run tag @s add dafi.sting.stickunprocessed
execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. if score $y dafi.sting.c4Life matches 0 if entity @s[nbt={wasOnGround:1b}] run tag @s add dafi.sting.stick.unprocessed
execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. unless block ~ ~-0.1 ~ air run tag @s add dafi.sting.stick.unprocessed
execute if score @s[tag=!dafi.sting.stick] dafi.sting.c4Life matches 1.. if score $z dafi.sting.c4Life matches 0 run tag @s add dafi.sting.stick.unprocessed

execute if score @s dafi.sting.c4Life matches 1.. if entity @s[tag=dafi.sting.stick.unprocessed] run data modify entity @s NoAI set value true
execute if entity @s[tag=dafi.sting.stick.unprocessed] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if score @s dafi.sting.c4Life matches 1.. if entity @s[tag=dafi.sting.stick.unprocessed] run tag @s add dafi.sting.stick
execute if score @s dafi.sting.c4Life matches 1.. if entity @s[tag=dafi.sting.stick] run tag @s remove dafi.sting.stick.unprocessed
execute if entity @s[tag=dafi.sting.stick] run particle dust 1 0 0 1 ~ ~0.25 ~ 0.3 0.3 0.3 0.1 1 force

# execute if score @s dafi.sting.c4Life matches 21 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
# execute if score @s dafi.sting.c4Life matches 21..1200 run particle dust 1 0 0 1 ~ ~0.5 ~ 0.05 0.1 0.05 0.1 1 force

# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~1 ~0.25 ~ 0.05 0.1 0.05 0.1 1 force
# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~-1 ~0.25 ~ 0.05 0.1 0.05 0.1 1 force
# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~0.5 ~0.25 ~0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~0.5 ~0.25 ~-0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~-0.5 ~0.25 ~0.8 0.05 0.1 0.05 0.1 1 force
# execute if score @s dafi.sting.c4Life matches 21..200 run particle firework ~-0.5 ~0.25 ~-0.8 0.05 0.1 0.05 0.1 1 force

# execute if score @s dafi.sting.c4Life matches 41 run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 2
execute if entity @s[tag=dafi.sting.stick] if entity @e[distance=..2.5,limit=1,type=player] run scoreboard players set @s dafi.sting.c4Life 241
# execute if score @s dafi.sting.c4Life matches 21..200 if entity @e[distance=..2,limit=1,type=player] run kill @s

execute if score @s dafi.sting.c4Life matches 240 run kill @s

execute if score @s dafi.sting.c4Life matches 241..244 run particle smoke ~ ~0.5 ~ 0.1 0.2 0.1 0.2 5 force
execute if score @s dafi.sting.c4Life matches 244 at @s as @a[distance=..7.5] run function dafi:internal/class/sting/c4/get_launch
execute if score @s dafi.sting.c4Life matches 244 at @s as @a[distance=..7.5] at @e[tag=dafi.sting.c4lifetime] facing entity @s feet run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
execute if score @s dafi.sting.c4Life matches 244.. run kill @s

tag @s remove dafi.sting.c4lifetime
