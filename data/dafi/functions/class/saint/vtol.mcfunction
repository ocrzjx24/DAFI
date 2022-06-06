## is_not_sneaking
execute as @s at @s unless score @s feather matches 1..40 if predicate dafi:is_not_sneaking run effect clear @s levitation
execute as @s at @s unless score @s feather matches 1..40 if predicate dafi:is_not_sneaking run scoreboard players add @s[scores={vtol=0..40}] vtol 1

## is_sneaking
# execute as @s at @s if predicate dafi:is_sneaking run effect give @s minecraft:slow_falling 1 10 true
execute as @s at @s unless score @s feather matches 1..40 if score @s vtol matches 0.. if predicate dafi:is_sneaking run scoreboard players remove @s vtol 3
execute as @s at @s unless score @s feather matches 1..40 if score @s vtol matches 0.. if predicate dafi:is_sneaking run effect give @s levitation 1 4 true
execute as @s at @s unless score @s feather matches 1..40 if score @s vtol matches 0.. if predicate dafi:is_sneaking anchored feet run particle end_rod ~ ~ ~ 0 0.2 0 0.03 5 normal 

## SCOREBOARD
execute as @s at @s unless score @s feather matches 1..40 if score @s vtol matches ..0 run effect clear @s levitation
execute as @s at @s if score @s vtol matches ..0 run scoreboard players set @s vtol 0

## TITLE
execute as @s at @s if score @s vtol matches 37..40 run title @s actionbar {"text":"■■■■■■■■■■","color":"dark_green"}
execute as @s at @s if score @s vtol matches 33..36 run title @s actionbar ["",{"text":"■■■■■■■■■","color":"dark_green"},{"text":"■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 29..32 run title @s actionbar ["",{"text":"■■■■■■■■","color":"yellow"},{"text":"■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 25..28 run title @s actionbar ["",{"text":"■■■■■■■","color":"yellow"},{"text":"■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 21..24 run title @s actionbar ["",{"text":"■■■■■■","color":"yellow"},{"text":"■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 17..20 run title @s actionbar ["",{"text":"■■■■■","color":"gold"},{"text":"■■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 13..16 run title @s actionbar ["",{"text":"■■■■","color":"gold"},{"text":"■■■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 9..12 run title @s actionbar ["",{"text":"■■■","color":"gold"},{"text":"■■■■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 5..8 run title @s actionbar ["",{"text":"■■","color":"red"},{"text":"■■■■■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 1..4 run title @s actionbar ["",{"text":"■","color":"red"},{"text":"■■■■■■■■■","color":"dark_red"}]
execute as @s at @s if score @s vtol matches 0 run title @s actionbar {"text":"■■■■■■■■■■","color":"dark_red"}
