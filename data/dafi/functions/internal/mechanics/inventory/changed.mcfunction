# say RRRRRRRRRRRRAGH!
# execute if entity @s[tag=siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:mechanics/inventory/help
# execute if entity @s[tag=siege] if entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run advancement revoke @s only dafi:inventory_changed

# execute if entity @s[tag=siege] run function dafi:mechanics/inventory/help

execute if entity @s[tag=dafi.sting] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:internal/class/sting/dropcrossbow
execute if entity @s[tag=dafi.siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:internal/class/siege/dropcrossbow
execute if entity @s[tag=dafi.swamp] if entity @s run function dafi:internal/class/swamp/swap
execute if entity @s[tag=siao] run function dafi:internal/class/siao/swap