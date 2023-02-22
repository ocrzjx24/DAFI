##> dafi:internal/class/saint/swap/swapstart
# runs uppercut slash and advancement stuff
#
# callers:
# > dafi:internal/mechanics/inventory/changed
#tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
#tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Swap","color":"white"},{"text":")","color":"red"}]
#tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]


execute store result score @s dafi.soul.health run data get entity @s Health
execute if score @s dafi.soul.health matches 20 run scoreboard players set @s hp_dmg 10
execute if score @s dafi.soul.health matches 18..19 run scoreboard players set @s hp_dmg 9
execute if score @s dafi.soul.health matches 16..17 run scoreboard players set @s hp_dmg 8
execute if score @s dafi.soul.health matches 14..15 run scoreboard players set @s hp_dmg 7
execute if score @s dafi.soul.health matches 12..13 run scoreboard players set @s hp_dmg 6
execute if score @s dafi.soul.health matches 10..11 run scoreboard players set @s hp_dmg 5
execute if score @s dafi.soul.health matches 8..9 run scoreboard players set @s hp_dmg 4
execute if score @s dafi.soul.health matches 6..7 run scoreboard players set @s hp_dmg 3
execute if score @s dafi.soul.health matches 4..5 run scoreboard players set @s hp_dmg 2
execute if score @s dafi.soul.health matches 2..3 run scoreboard players set @s hp_dmg 1

execute if score @s dafi.soul.health matches 19..20 run scoreboard players set @s dafi.soul.health 10
execute if score @s dafi.soul.health matches 17..18 run scoreboard players set @s dafi.soul.health 9
execute if score @s dafi.soul.health matches 15..16 run scoreboard players set @s dafi.soul.health 8
execute if score @s dafi.soul.health matches 13..14 run scoreboard players set @s dafi.soul.health 7
execute if score @s dafi.soul.health matches 11..12 run scoreboard players set @s dafi.soul.health 6
execute if score @s dafi.soul.health matches 9..10 run scoreboard players set @s dafi.soul.health 5
execute if score @s dafi.soul.health matches 7..8 run scoreboard players set @s dafi.soul.health 4
execute if score @s dafi.soul.health matches 5..6 run scoreboard players set @s dafi.soul.health 3
execute if score @s dafi.soul.health matches 3..4 run scoreboard players set @s dafi.soul.health 2
execute if score @s dafi.soul.health matches 2 run scoreboard players set @s dafi.soul.health 1


function dafi:internal/mechanics/inventory/swap
advancement revoke @s only dafi:inventory_changed