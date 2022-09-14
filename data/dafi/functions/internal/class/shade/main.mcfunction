## CROUCH
execute if entity @s[tag=!dafi.shade.crouched] if predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/crouch
execute if entity @s[tag=dafi.shade.crouched] unless predicate dafi:is_sneaking run function dafi:internal/class/shade/crouch/uncrouch

## SHWING SHWING SHWING
execute if score @s dafi.shade.dropNetheriteSword matches 1 at @s run function dafi:internal/class/shade/slash/summon
execute if score @s dafi.shade.dropNetheriteSword matches 1.. run scoreboard players set @s dafi.shade.dropNetheriteSword 0
#execute if score @s dafi.shade.dropNetheriteSword matches 1.. run scoreboard players add @s dafi.shade.dropNetheriteSword 1