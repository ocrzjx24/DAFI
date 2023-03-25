## SHIELD CHECK
function dafi:internal/class/steel/shieldcheck
## EMPODIO
execute if data entity @s[tag=dafi.steel.drop.primed] {OnGround:1b} run function dafi:internal/class/steel/drop/groundpound
execute if data entity @s[tag=dafi.steel.drop.primed2] {OnGround:0b} run tag @s add dafi.steel.drop.primed3
execute if data entity @s[tag=dafi.steel.drop.primed3] {OnGround:1b} run function dafi:internal/class/steel/drop/groundpound
execute if score @s dafi.steel.dropStoneAxe matches 1 unless score @s dafi.steel.drop.cooldown matches 1.. run scoreboard players set @s dafi.steel.drop.cooldown 60
execute if score @s dafi.steel.dropStoneAxe matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:stone_axe"}}]
execute if score @s dafi.steel.dropStoneAxe matches 1 run item replace entity @s hotbar.1 with minecraft:stone_axe{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1

    scoreboard players reset @s dafi.steel.dropStoneAxe
execute if score @s dafi.steel.drop.cooldown matches 60 run function dafi:internal/class/steel/drop/drop

#execute as @s[predicate=dafi:is_sneaking] at @s anchored eyes run function dafi:class/steel/reposition
# execute at @e[type=shulker,tag=dafi.steel.blockRockets] run function dafi:internal/class/steel/blockrockets
# cooldown end
execute if score @s dafi.steel.drop.cooldown matches 1 run item replace entity @s hotbar.1 with minecraft:stone_axe{mainhand:1,Unbreakable:1,display:{Name:'[{"text":"Labrys","color":"green","bold":true,"italic":false},{"text":"","color":"green","bold":false}]'},Enchantments:[{id:"minecraft:sharpness",lvl:5}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:10,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:3} 1
execute if score @s dafi.steel.drop.cooldown matches 1 run title @s actionbar {"text":"\u2605 STAND THY GROUND \u2605","bold":true,"color":"dark_green"}
execute if score @s dafi.steel.drop.cooldown matches 1 at @s run playsound minecraft:entity.iron_golem.repair master @a[distance=..10] ~ ~ ~ 100 1 1

# increment / reset
execute if score @s dafi.steel.drop.cooldown matches ..0 run scoreboard players reset @s dafi.steel.drop.cooldown
execute if score @s dafi.steel.drop.cooldown matches 1.. run scoreboard players remove @s dafi.steel.drop.cooldown 1


#SWAP COOLDOWN
execute if score @s dafi.steel.swap.cooldown matches ..0 run tellraw @s [{"text":"[","color":"gold"},{"text":"!","color":"yellow"},{"text":"] > "},{"text":"Ability refreshed","color":"#ffcc00"},{"text":" ","color":"dark_green"},{"text":"(","color":"yellow"},{"text":"Swap","color":"white"},{"text":")","color":"yellow"}]
execute if score @s dafi.steel.swap.cooldown matches ..0 run scoreboard players reset @s dafi.steel.swap.cooldown
execute if score @s dafi.steel.swap.cooldown matches 1.. run scoreboard players remove @s dafi.steel.swap.cooldown 1

## PARTICLE
#execute at @s run function dafi:class/steel/particle1
#execute as @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run function dafi:class/steel/particle
#execute as @s[nbt={Inventory:[{id:"minecraft:shield",Slot:-106b}]}] run function dafi:class/steel/particle
function dafi:internal/class/steel/visible_cooldowns
## KILL
