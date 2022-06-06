## CAST
function dafi:class/shade/cast

## THROW SWORD
execute at @s[scores={dropNSword=1}] run function dafi:class/shade/summon
scoreboard players reset @s[scores={dropNSword=1..}] dropNSword
scoreboard players add @s[scores={dropNSword=1..}] dropNSword 1

## DEATHCHECK
