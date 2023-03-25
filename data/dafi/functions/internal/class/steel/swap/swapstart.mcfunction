##> dafi:internal/class/saint/swap/swapstart
# runs uppercut slash and advancement stuff
#
# callers:
# > dafi:internal/mechanics/inventory/changed
execute unless score @s dafi.steel.swap.cooldown matches ..120 run tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
execute if score @s dafi.steel.swap.cooldown matches ..120 run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Swap","color":"white"},{"text":")","color":"red"}]

execute unless score @s dafi.steel.swap.cooldown matches ..120 run function dafi:internal/class/steel/swap/wall
execute unless score @s dafi.steel.swap.cooldown matches ..120 run scoreboard players set @s dafi.steel.swap.cooldown 120
function dafi:internal/mechanics/inventory/swap
advancement revoke @s only dafi:inventory_changed