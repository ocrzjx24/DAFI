execute if score @s dafi.arrow.CD matches 1.. run scoreboard players remove @s dafi.arrow.CD 1
execute if score @s dafi.arrow.reload_time matches 1.. if score $foo dafi.arrow.reload_time matches 0 run playsound minecraft:block.note_block.hat master @s ~ ~1000 ~ 200 0.5
    scoreboard players operation $foo dafi.arrow.reload_time = @s dafi.arrow.reload_time
    scoreboard players operation $foo dafi.arrow.reload_time %= #constant dafi.arrow.reload_time
execute if score @s dafi.arrow.reload_time matches 1.. run scoreboard players remove @s dafi.arrow.reload_time 1

execute as @s[tag=!dafi.arrow.is_loaded] at @s if score @s dafi.arrow.ammo matches 1.. if score @s dafi.arrow.CD matches 0 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 0.7
execute as @s[tag=!dafi.arrow.is_loaded] if score @s dafi.arrow.ammo matches 1.. if score @s dafi.arrow.CD matches 0 run function dafi:internal/mechanics/arrow/rate
execute as @s[tag=!dafi.arrow.is_loaded] at @s if score @s dafi.arrow.ammo matches 1.. if score @s dafi.arrow.CD matches 0 run tag @s add dafi.arrow.is_loaded

execute as @s[tag=!dafi.arrow.is_reloading] if score @s dafi.arrow.ammo matches 0 run function dafi:internal/mechanics/arrow/set_reload
execute as @s[tag=dafi.arrow.is_reloading] if score @s dafi.arrow.reload_time matches 0 run function dafi:internal/mechanics/arrow/set_ammo