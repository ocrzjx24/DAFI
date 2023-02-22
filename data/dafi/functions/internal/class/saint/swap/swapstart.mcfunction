##> dafi:internal/class/saint/swap/swapstart
# runs uppercut slash and advancement stuff
#
# callers:
# > dafi:internal/mechanics/inventory/changed
execute unless score @s dafi.saint.swap.cooldown matches 2.. run scoreboard players add @s dafi.saint.swap.cooldown 1
execute if score @s dafi.saint.swap.cooldown matches 1 run tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability cast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
execute if score @s dafi.saint.swap.cooldown matches 1 run playsound block.beacon.power_select master @s ~ ~1000 ~ 1000 2
execute if score @s dafi.saint.swap.cooldown matches 1 run playsound entity.ender_dragon.flap master @s ~ ~1000 ~ 1000 1
execute if score @s dafi.saint.swap.cooldown matches 2 run tellraw @s [{"text":"[","color":"#3399cc"},{"text":"!","color":"#33ffff"},{"text":"] > "},{"text":"Ability recast! ","color":"#00cccc"},{"text":"(","color":"#33ffff"},{"text":"Swap","color":"white"},{"text":")","color":"#33ffff"}]
execute if score @s dafi.saint.swap.cooldown matches 3.. run tellraw @s [{"text":"[","color":"dark_red"},{"text":"!","color":"red"},{"text":"] > "},{"text":"Ability is still on cooldown! ","color":"#ff0066"},{"text":"(","color":"red"},{"text":"Swap","color":"white"},{"text":")","color":"red"}]
execute if score @s dafi.saint.swap.cooldown matches 1 run function dafi:internal/class/saint/summon/summon
execute at @s if score @s dafi.saint.swap.cooldown matches 2 as @e[tag=dafi.saint.vortex] if score @s dafi.sbsid = @p dafi.sbsid run scoreboard players set @s dafi.saint.vortex.lifetime 100

function dafi:internal/mechanics/inventory/swap
advancement revoke @s only dafi:inventory_changed