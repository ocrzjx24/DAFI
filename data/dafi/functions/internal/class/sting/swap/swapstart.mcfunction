##> dafi:internal/class/sting/swap/swapstart
# runs uppercut slash and advancement stuff
#
# callers:
# > dafi:internal/mechanics/inventory/changed
# tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
# tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Swap","color":"white"},{"text":")","color":"red"}]
# tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]

# scoreboard players add @s dafi.sting.mode 1
# execute if score @s dafi.sting.mode matches 2.. run scoreboard players set @s dafi.sting.mode 0

function dafi:internal/mechanics/inventory/swap
advancement revoke @s only dafi:inventory_changed