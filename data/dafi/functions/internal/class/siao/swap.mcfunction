
advancement revoke @s only dafi:inventory_changed

execute if data entity @s Inventory[{Slot:-106b}].tag.spear run say Swap
execute if data entity @s Inventory[{Slot:-106b}].tag.spear run item replace block 0 -64 0 container.0 from entity @s weapon.offhand
execute if data entity @s Inventory[{Slot:-106b}].tag.spear run item replace entity @s weapon.mainhand from entity @s weapon.offhand
execute if data entity @s Inventory[{Slot:-106b}].tag.spear run item replace entity @s weapon.offhand from block 0 -64 0 container.0
