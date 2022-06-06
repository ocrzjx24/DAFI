## cast hit block
# scoreboard players set #hit raycast 1
execute if score @s wallbang matches 0 run particle smoke ~ ~ ~ 0 0 0 0 1 force @s 
scoreboard players add @s wallbang 1