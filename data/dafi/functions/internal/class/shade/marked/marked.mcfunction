scoreboard players add @e[tag=dafi.shade.hit.marked] dafi.shade.marked.tagReset 1
execute at @e[tag=dafi.shade.hit.marked,scores={dafi.shade.marked.tagReset=1}] run playsound entity.generic.hurt master @a ~ ~ ~ 0.5 0.8
execute as @e[tag=dafi.shade.hit.marked,scores={dafi.shade.marked.tagReset=1}] unless score @s dafi.shade.marked.stackCount matches 0.. run scoreboard players set @s dafi.shade.marked.stackCount 0
effect give @e[tag=dafi.shade.hit.marked,scores={dafi.shade.marked.tagReset=1}] blindness 1 0 true
scoreboard players add @e[tag=dafi.shade.hit.marked,scores={dafi.shade.marked.tagReset=1,dafi.shade.marked.stackCount=..19}] dafi.shade.marked.stackCount 1
execute as @e[tag=dafi.shade.hit.marked] if score @s dafi.shade.marked.tagReset matches 1.. run function dafi:internal/class/shade/marked/tagreset

scoreboard players add @e[scores={dafi.shade.marked.stackCount=1..}] dafi.shade.marked.stackReset 1
scoreboard players remove @e[scores={dafi.shade.marked.stackReset=60..}] dafi.shade.marked.stackCount 1
scoreboard players reset @e[scores={dafi.shade.marked.stackReset=60..}] dafi.shade.marked.stackReset

scoreboard players reset @a[scores={dafi.deathcheck=1}] dafi.shade.marked.stackCount
scoreboard players reset @e[tag=dafi.shade.hit.damage] dafi.shade.marked.stackCount
tag @e[tag=dafi.shade.hit.damage] remove dafi.shade.hit.damage