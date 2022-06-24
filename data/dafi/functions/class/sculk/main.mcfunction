



execute if score @s[team=red] dropBone matches 1 at @s run summon minecraft:warden ~ ~ ~ {Team:"red",Tags:["wardenLife"],CustomName:'[{"text":"Tibbers","bold":true}]',CustomNameVisible:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:{}}}}}
execute if score @s[team=blue] dropBone matches 1 at @s run summon minecraft:warden ~ ~ ~ {Team:"blue",Tags:["wardenLife"],CustomName:'[{"text":"Tibbers","bold":true}]',CustomNameVisible:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:{}}}}}



execute if score @s dropBone matches 240 run item replace entity @s hotbar.1 with minecraft:bone{display:{Name:'[{"text":"Corrupt","italic":false,"bold":true,"color":"dark_aqua"},{"text":"ion","color":"gray"}]',Lore:['[{"text":"This is a joke class how...","italic":false,"color":"dark_gray"}]','[{"text":"how did you even select this","italic":false,"color":"dark_gray"}]','[{"text":"have fun I guess...","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:sharpness,lvl:9},{id:smite,lvl:5}]} 1
execute if score @s dropBone matches 240.. run scoreboard players reset @s dropBone
execute if score @s dropBone matches 1.. run scoreboard players add @s dropBone 1

## KILL ITEMo
kill @e[type=item,nbt={Item:{id:"minecraft:bone"}}]