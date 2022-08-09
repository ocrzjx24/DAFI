##> dafi:internal/class/sculk/main
# main function for sculk
#
# callers:
# > dafi:internal/class/main

execute if score @s[team=red] dafi.sculk.dropBone matches 1 at @s run summon minecraft:warden ~ ~ ~ {Team:"red",Tags:["dafi.sculk.wardenLife"],CustomName:'[{"text":"Tibbers","bold":true}]',CustomNameVisible:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:{}}}}}
execute if score @s[team=blue] dafi.sculk.dropBone matches 1 at @s run summon minecraft:warden ~ ~ ~ {Team:"blue",Tags:["dafi.sculk.wardenLife"],CustomName:'[{"text":"Tibbers","bold":true}]',CustomNameVisible:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:{}}}}}

execute if score @s dafi.sculk.dropBone matches 240 run item replace entity @s hotbar.1 with minecraft:bone{display:{Name:'[{"text":"Corrupt","italic":false,"bold":true,"color":"dark_aqua"},{"text":"ion","color":"gray"}]',Lore:['[{"text":"This is a joke class how...","italic":false,"color":"dark_gray"}]','[{"text":"how did you even select this","italic":false,"color":"dark_gray"}]','[{"text":"have fun I guess...","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:sharpness,lvl:9},{id:smite,lvl:5}]} 1
execute if score @s dafi.sculk.dropBone matches 240.. run scoreboard players reset @s dafi.sculk.dropBone
execute if score @s dafi.sculk.dropBone matches 1.. run scoreboard players add @s dafi.sculk.dropBone 1

## KILL ITEM
kill @e[type=item,nbt={Item:{id:"minecraft:bone"}}]