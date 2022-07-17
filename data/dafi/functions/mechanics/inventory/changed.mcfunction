# say RRRRRRRRRRRRAGH!
# execute if entity @s[tag=siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:mechanics/inventory/help
# execute if entity @s[tag=siege] if entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run advancement revoke @s only dafi:inventory_changed

# execute if entity @s[tag=siege] run function dafi:mechanics/inventory/help

execute if entity @s[tag=siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:class/siege/dropcrossbow
advancement revoke @s only dafi:inventory_changed