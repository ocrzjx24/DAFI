##> dafi:internal/class/shade/chargecheck
# checks if player is charging
#
# callers:
# > ?

# scoreboard players add @s[scores={chargeCheck=1}] charge 1
# scoreboard players set @s[scores={chargeCheck=0,charge=1..14}] charge 0
# scoreboard players set @s[scores={chargeCheck=1}] chargeCheck 0
execute if score @s dafi.shade.chargeCheck matches 1 run scoreboard players add @s dafi.shade.charge 1
execute if score @s dafi.shade.chargeCheck matches 0 if score @s dafi.shade.charge matches 1..3 run scoreboard players set @s dafi.shade.charge -1
execute if score @s dafi.shade.chargeCheck matches 0 if score @s dafi.shade.charge matches 1..9 run scoreboard players set @s dafi.shade.charge 0
execute if score @s dafi.shade.chargeCheck matches 1 run scoreboard players set @s dafi.shade.chargeCheck 0