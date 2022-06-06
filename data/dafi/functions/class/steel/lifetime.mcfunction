scoreboard players add @e[tag=shulkerLife] shulkerLife 1
execute as @e[type=shulker,tag=shulkerLife] run team join shulker @s
execute as @e[type=shulker,tag=shulkerLife] run effect give @s glowing 100 0 true
#execute at @e[tag=shulkerLife] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.5 0.5 0.5 0.01 1
execute at @e[scores={shulkerLife=120}] run playsound minecraft:block.big_dripleaf.tilt_up master @a ~ ~ ~ 1 0.7
tp @e[scores={shulkerLife=120..}] ~ ~-1000 ~
kill @e[scores={shulkerLife=120..}]