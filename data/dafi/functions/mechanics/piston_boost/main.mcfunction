execute as @a at @s if block ~ ~-0.0001 ~ minecraft:piston run tag @s add boost
effect give @a[tag=boost] minecraft:levitation 1 45 true
scoreboard players add @a[tag=boost] boost 1
execute at @a[scores={boost=2}] run playsound minecraft:block.piston.extend master @a[distance=..10] ~ ~ ~ 1 1.2
effect clear @a[scores={boost=3}] minecraft:levitation
tag @a[scores={boost=3..}] remove boost
scoreboard players reset @a[scores={boost=3..}] boost