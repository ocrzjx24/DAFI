## SHIELD CHECK
function dafi:internal/class/steel/shieldcheck
## EMPODIO
execute if score @s dafi.steel.dropStoneAxe matches 1 at @s run function dafi:internal/class/steel/drop
execute if score @s dafi.steel.dropStoneAxe matches 1 at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~1000 ~ 100 1.1
execute if score @s dafi.steel.dropStoneAxe matches 1 at @s run particle block dirt ~ ~ ~ 4 0 4 1 100 normal

#execute as @s[predicate=dafi:is_sneaking] at @s anchored eyes run function dafi:class/steel/reposition
# execute at @e[type=shulker,tag=dafi.steel.blockRockets] run function dafi:internal/class/steel/blockrockets
# cooldown end
execute if score @s dafi.steel.dropStoneAxe matches 60 run item replace entity @s hotbar.1 with minecraft:stone_axe{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
execute if score @s dafi.steel.dropStoneAxe matches 60 run title @s actionbar {"text":"\u2605 STAND THY GROUND \u2605","bold":true,"color":"dark_green"}
execute if score @s dafi.steel.dropStoneAxe matches 60 at @s run playsound minecraft:entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 100 1 1

# increment / reset
execute if score @s dafi.steel.dropStoneAxe matches 60.. run scoreboard players reset @s dafi.steel.dropStoneAxe
execute if score @s dafi.steel.dropStoneAxe matches 1.. run scoreboard players add @s dafi.steel.dropStoneAxe 1


#SWAP COOLDOWN
execute if score @s dafi.steel.swap.cooldown matches 120.. run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.steel.swap.cooldown matches 120.. run scoreboard players reset @s dafi.steel.swap.cooldown
execute if score @s dafi.steel.swap.cooldown matches 1.. run scoreboard players add @s dafi.steel.swap.cooldown 1

## PARTICLE
#execute at @s run function dafi:class/steel/particle1
#execute as @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run function dafi:class/steel/particle
#execute as @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b}]}] run function dafi:class/steel/particle

## KILL
kill @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}]