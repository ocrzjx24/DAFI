## ENDER PEARL APPEAR DISAPPEAR THING

tag @s[tag=netheriteSwordSelected] remove netheriteSwordSelected
tag @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}},tag=!netheriteSwordSelected] add netheriteSwordSelected
item replace entity @s[tag=netheriteSwordSelected,tag=!hasEP] weapon.offhand with ender_eye{display:{Name:'[{"text":"Bi","italic":false,"bold":true,"color":"light_purple"},{"text":"nd ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
tag @s[tag=hasEP] remove hasEP
tag @s[nbt={Inventory:[{id:"minecraft:ender_eye"}]},tag=!hasEP] add hasEP
clear @s[tag=!netheriteSwordSelected] ender_eye


## BIND
execute at @s[scores={bind=1}] positioned ~ ~-0.2 ~ anchored eyes run function dafi:class/shade/shoot


#tag @s[nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] remove noEP
#item replace entity @s[tag=noEP] weapon.offhand with air
#item replace entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}},tag=noEP] weapon.offhand with ender_pearl{display:{Name:'[{"text":"Mark","italic":true,"bold":true,"color":"blue"},{"text":" [R-Click]","italic":false}]'}} 1
#clear @s[tag=noEP] minecraft:ender_pearl













