##> dafi:internal/class/shade/swap/uppercut
# restores swapped items to original slot
#
# callers:
# > dafi:internal/class/shade/swap/swap

item replace block 0 -64 0 container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from block 0 -64 0 container.0
#advancement revoke @s only dafi:inventory_changed