# say RRRRRRRRRRRRAGH!
# execute if entity @s[tag=siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:mechanics/inventory/help
# execute if entity @s[tag=siege] if entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run advancement revoke @s only dafi:inventory_changed

# execute if entity @s[tag=siege] run function dafi:mechanics/inventory/help


execute if entity @s[tag=siao] run function dafi:internal/class/siao/swap

##SAINT
execute if data entity @s[tag=dafi.saint] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/saint/swap/swapstart
execute unless data entity @s[tag=dafi.saint] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/saint/swap/swapstart

##SHADE
execute if data entity @s[tag=dafi.shade] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/shade/swap/swapstart
execute unless data entity @s[tag=dafi.shade] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/shade/swap/swapstart

##SIEGE
execute if entity @s[tag=dafi.siege] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:internal/class/siege/dropcrossbow
execute if data entity @s[tag=dafi.siege] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/siege/swap/swapstart
execute unless data entity @s[tag=dafi.siege] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/siege/swap/swapstart

##SLAY
execute if data entity @s[tag=dafi.slay] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/slay/swap/swapstart
execute unless data entity @s[tag=dafi.slay] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/slay/swap/swapstart

##SOUL
execute if data entity @s[tag=dafi.soul] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/soul/swap/swapstart
execute unless data entity @s[tag=dafi.soul] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/soul/swap/swapstart
##STEEL
execute if data entity @s[tag=dafi.steel] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/steel/swap/swapstart
execute unless data entity @s[tag=dafi.steel] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/steel/swap/swapstart

##STING
execute if entity @s[tag=dafi.sting] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run function dafi:internal/class/sting/dropcrossbow
execute if data entity @s[tag=dafi.sting] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/sting/swap/swapstart
execute unless data entity @s[tag=dafi.sting] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/sting/swap/swapstart

##STORM
execute if data entity @s[tag=dafi.storm] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/storm/swap/swapstart
execute unless data entity @s[tag=dafi.storm] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/storm/swap/swapstart

##SWAMP
execute if entity @s[tag=dafi.swamp] if entity @s run function dafi:internal/class/swamp/swap
execute if data entity @s[tag=dafi.swamp] Inventory[{Slot:-106b}].tag.mainhand run function dafi:internal/class/swamp/swap/swapstart
execute unless data entity @s[tag=dafi.swamp] Inventory[{Slot:-106b}].tag.mainhand if data entity @s SelectedItem.tag.offhand run function dafi:internal/class/swamp/swap/swapstart


advancement revoke @s only dafi:inventory_changed