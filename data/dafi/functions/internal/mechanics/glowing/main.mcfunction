effect clear @a glowing
scoreboard players set @a[tag=dafi.glow] dafi.glow.duration 20
tag @a[tag=dafi.glow] remove dafi.glow
effect give @a[scores={dafi.glow.duration=1..}] glowing 1 0 true
scoreboard players remove @a[scores={dafi.glow.duration=1..}] dafi.glow.duration 1