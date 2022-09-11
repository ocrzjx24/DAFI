execute as @a[scores={cw_hp_old=1..}] run function dafi:internal/mechanics/cw_hp_control/return_health
execute as @a[gamemode=!creative,gamemode=!spectator] unless score @s hp_dmg matches 0 run function dafi:internal/mechanics/cw_hp_control/deal_damage
scoreboard players set @a hp_dmg 0