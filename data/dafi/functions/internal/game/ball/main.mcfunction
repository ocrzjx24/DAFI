execute as @a if score @s dafi.ball.dropNoteBlock matches 1.. at @s run function dafi:internal/game/ball/drop
kill @e[type=item,nbt={Item:{id:"minecraft:note_block"}}]

## ON DEATH
execute as @a[scores={death=1..}] run function dafi:internal/game/ball/ondeath/ondeath