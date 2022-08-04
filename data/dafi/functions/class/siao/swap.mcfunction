#execute if data entity @s Inventory[{Slot:-106b}].tag.mainhand run say swap
execute if data entity @s Inventory[{Slot:-106b}].tag.mainhand run function dafi:class/siao/swapstart

advancement revoke @s only dafi:inventory_changed
