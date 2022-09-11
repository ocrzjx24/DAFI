##> dafi:internal/class/shade/marked/markedbyffa
# runs at all players marked by ffa shade
#
# callers:
# > dafi:internal/class/shade/cast

# INITIAL INSTANCE
effect give @s[scores={dafi.shade.castTagged=1}] blindness 1 0 true
tag @s[scores={dafi.shade.castTagged=1}] add dafi.glow

#effect give @s[scores={dafi.shade.castTagged=1}] glowing 1 0 true

execute at @s[scores={dafi.shade.castTagged=1}] run playsound minecraft:entity.allay.item_taken master @a[tag=dafi.shade,team=ffa] ~ ~ ~ 1 1.5
execute at @s[scores={dafi.shade.castTagged=1..}] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 2 2 force @a[tag=dafi.shade,team=ffa]
execute at @s[scores={dafi.shade.castTagged=1..}] run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 0.5 2 force @a[tag=dafi.shade,team=ffa,distance=..5]
execute at @s[scores={dafi.shade.castTagged=1..}] run title @a[tag=dafi.shade,team=red] actionbar {"text":"! BOUND !","bold":true,"color":"light_purple"}

# RECURSION INSTANCE
execute at @s[scores={dafi.shade.castTagged=1}] run scoreboard players set @e[distance=..10,team=!ffa,tag=!dafi.shade.swordCast,tag=!dafi.shade.recuredByffa] dafi.shade.castTagged 1
execute at @s[scores={dafi.shade.castTagged=1}] run tag @e[distance=..10,team=!ffa,tag=!dafi.shade.swordCast,tag=!dafi.shade.recuredByffa] add dafi.shade.markedByFFA
execute at @s[scores={dafi.shade.castTagged=1}] run tag @e[distance=..10,team=!ffa,tag=!dafi.shade.swordCast,tag=!dafi.shade.recuredByffa] add dafi.shade.recuredByFFA
tag @s[scores={dafi.shade.castTagged=20}] remove dafi.shade.recuredByFFA



# MARKED RESET
tag @s[scores={dafi.shade.castTagged=180..}] remove dafi.shade.markedByFFA
scoreboard players reset @s[scores={dafi.shade.castTagged=180..}] dafi.shade.castTagged
scoreboard players add @s[scores={dafi.shade.castTagged=1..}] dafi.shade.castTagged 1
