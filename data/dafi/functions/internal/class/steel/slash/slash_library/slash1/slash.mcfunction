scoreboard players add @s dafi.steel.slash.lifetime 1
execute if score @s dafi.steel.slash.lifetime matches 1 rotated ~ 90 run function dafi:internal/class/steel/slash/slash_library/slash1/frame_1
execute if score @s dafi.steel.slash.lifetime matches 2 rotated ~ 90 run function dafi:internal/class/steel/slash/slash_library/slash1/frame_2
#execute if score @s dafi.steel.slash.lifetime matches 3 rotated ~ 90 run function dafi:internal/class/steel/slash/slash_library/slash1/frame_3
execute if score @s dafi.steel.slash.lifetime matches 2 run kill @s