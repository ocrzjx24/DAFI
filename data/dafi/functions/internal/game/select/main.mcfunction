execute as @a[scores={dafi.game.class=1}] run function dafi:internal/game/select/legacy
execute as @a[scores={dafi.game.gray=1}] run function dafi:internal/class/siege/select
execute as @a[scores={dafi.game.white=1}] run function dafi:internal/class/saint/select
execute as @a[scores={dafi.game.red=1}] run function dafi:internal/class/slay/select
execute as @a[scores={dafi.game.orange=1}] run function dafi:internal/class/sting/select
execute as @a[scores={dafi.game.yellow=1}] run function dafi:internal/class/soul/select
execute as @a[scores={dafi.game.lime=1}] run function dafi:internal/class/steel/select
execute as @a[scores={dafi.game.light_blue=1}] run function dafi:internal/class/storm/select
execute as @a[scores={dafi.game.magenta=1}] run function dafi:internal/class/shade/select
execute as @a[scores={dafi.game.brown=1}] run function dafi:internal/class/swamp/select
execute as @a[scores={dafi.game.cyan=1}] run function dafi:internal/class/sculk/select

kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:cyan_dye"}}]