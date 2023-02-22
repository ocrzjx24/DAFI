##> dafi:internal/class/shade/swap/swapstart
# runs uppercut slash and advancement stuff
#
# callers:
# > dafi:internal/mechanics/inventory/changed

function dafi:internal/mechanics/inventory/swap
advancement revoke @s only dafi:inventory_changed

execute if score @s dafi.shade.swap.cooldown matches 1.. run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Swap","color":"white"},{"text":")","color":"red"}]
execute unless score @s dafi.shade.swap.cooldown matches 1.. run tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
execute unless score @s dafi.shade.swap.cooldown matches 1.. at @s run function dafi:internal/class/shade/swap/uppercut

#function dafi:internal/mechanics/inventory/swap
