##> dafi:internal/class/saint/main
# main function for saint
#
# callers:
# > dafi:internal/class/main

# UPDRAFT
execute if score @s dafi.saint.dropFeather matches 1 at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1.5
execute if score @s dafi.saint.dropFeather matches 1 at @s run playsound minecraft:entity.parrot.fly master @a ~ ~ ~ 1 1
execute if score @s[team=red] dafi.saint.dropFeather matches 1 at @s run function dafi:internal/class/saint/raycast/red/fire
execute if score @s[team=blue] dafi.saint.dropFeather matches 1 at @s run function dafi:internal/class/saint/raycast/blue/fire
scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid
execute if score @s[team=ffa] dafi.saint.dropFeather matches 1 at @s run function dafi:internal/class/saint/raycast/ffa/fire
scoreboard players reset #temp dafi.sbsid
execute if score @s dafi.saint.dropFeather matches 1 run tag @s remove dafi.saint.this
#execute if score @s feather matches 20 run item replace entity @s armor.chest with elytra{Unbreakable:1,HideFlags:4} 1
#execute if score @s feather matches 62.. run clear @s minecraft:elytra
execute if score @s dafi.saint.dropFeather matches 100 run item replace entity @s hotbar.1 with feather{display:{Name:'[{"text":"Wings","italic":false,"bold":true,"color":"white"}]'},Enchantments:[{id:"unbreaking",lvl:1}],Unbreakable:1,HideFlags:1} 1
#execute if score @s dafi.saint.dropFeather matches 1..25 at @s positioned ~ ~2.2 ~ run function dafi:internal/class/saint/particle2
#execute if score @s feather matches 100.. run clear @s minecraft:elytra

# increment/reset
execute if score @s dafi.saint.dropFeather matches 100.. run scoreboard players reset @s dafi.saint.dropFeather
execute if score @s dafi.saint.dropFeather matches 1.. run scoreboard players add @s dafi.saint.dropFeather 1

# PASSIVE
execute at @s run function dafi:internal/class/saint/sneak

# HITBOX INCREASE
#execute if score @s feather matches 1..100 at @s run function dafi:class/saint/hitbox

# PARTICLES
#execute at @s run particle minecraft:enchant ~ ~0.2 ~ 0.4 0.1 0.4 0.001 1 normal

# TEXT
#execute if score @s feather matches 199 run title @s actionbar {"text":"\u2605 PREPARE TO ASCEND \u2605","bold":true}

# SOUND
execute if score @s dafi.saint.dropFeather matches 99 at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~1000 ~ 1000 1 1

# KILL
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

# DEATHCHECK
execute if score @s dafi.saint.dropFeather matches 1.. if score @s dafi.deathcheck matches 1.. run execute if entity @s run scoreboard players set @s dafi.saint.dropFeather 100

