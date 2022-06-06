execute as @a[scores={class=1}] run function dafi:game/select/legacy
execute as @a[scores={gray=1}] run function dafi:class/siege/select
execute as @a[scores={white=1}] run function dafi:class/saint/select
execute as @a[scores={red=1}] run function dafi:class/slay/select
execute as @a[scores={orange=1}] run function dafi:class/sting/select
execute as @a[scores={yellow=1}] run function dafi:class/soul/select
execute as @a[scores={lime=1}] run function dafi:class/steel/select
execute as @a[scores={light_blue=1}] run function dafi:class/storm/select
execute as @a[scores={magenta=1}] run function dafi:class/shade/select
execute as @a[scores={brown=1}] run function dafi:class/swamp/select

kill @e[type=item,nbt={Item:{id:"minecraft:gray_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:white_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:orange_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_dye"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:brown_dye"}}]