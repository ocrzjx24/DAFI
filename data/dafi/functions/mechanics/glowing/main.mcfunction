effect clear @a glowing

scoreboard players set @a[tag=glow] glow 20
tag @a[tag=glow] remove glow
effect give @a[scores={glow=1..}] glowing 1 0 true
scoreboard players remove @a[scores={glow=1..}] glow 1