#scoreboard players add @e[tag=dafi.shade.hit.marked] dafi.shade.marked.tagReset 1


#execute as @e[tag=dafi.shade.hit.marked] unless score @s dafi.shade.marked.stackCount matches 0.. run scoreboard players set @s dafi.shade.marked.stackCount 0
#scoreboard players add @e[tag=dafi.shade.hit.marked,scores={dafi.shade.marked.tagReset=1,dafi.shade.marked.stackCount=..19}] dafi.shade.marked.stackCount 1
#execute as @e[tag=dafi.shade.hit.marked] if score @s dafi.shade.marked.tagReset matches 1.. run function dafi:internal/class/shade/marked/tagreset

#scoreboard players add @e[scores={dafi.shade.marked.stackCount=1..}] dafi.shade.marked.stackReset 1
#scoreboard players remove @e[scores={dafi.shade.marked.stackReset=60..}] dafi.shade.marked.stackCount 1
#scoreboard players reset @e[scores={dafi.shade.marked.stackReset=60..}] dafi.shade.marked.stackReset

#scoreboard players reset @a[scores={dafi.deathcheck=1}] dafi.shade.marked.stackCount
#scoreboard players reset @e[tag=dafi.shade.hit.damage] dafi.shade.marked.stackCount
scoreboard players add @e[tag=dafi.shade.hit.ranged] dafi.slow.duration 60
effect give @e[type=!player,tag=dafi.shade.hit.ranged] slowness 3 4
tag @e[tag=dafi.shade.hit.ranged] remove dafi.shade.hit.ranged
tag @e[tag=dafi.shade.hit] remove dafi.shade.hit
