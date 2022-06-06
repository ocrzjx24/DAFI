## EMPODIO
execute at @s[scores={dropSAxe=1}] run function dafi:class/steel/drop
execute as @s[predicate=dafi:is_sneaking] at @s anchored eyes run function dafi:class/steel/reposition
execute at @e[type=shulker,tag=blockRockets] run function dafi:class/steel/blockrockets
# cooldown end
item replace entity @s[scores={dropSAxe=160},nbt={Inventory:[{id:"minecraft:shield"}]}] hotbar.1 with minecraft:stone_axe{Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
title @s[scores={dropSAxe=160}] actionbar {"text":"\u2605 STAND THY GROUND \u2605","bold":true,"color":"dark_green"}
execute at @s[scores={dropSAxe=160}] run playsound minecraft:entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 100 1 1
# increment / reset
scoreboard players reset @s[scores={dropSAxe=160..}] dropSAxe
scoreboard players add @s[scores={dropSAxe=1..}] dropSAxe 1

## PARTICLE
execute as @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run function dafi:class/steel/particle
execute as @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b}]}] run function dafi:class/steel/particle

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}]