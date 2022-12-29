##
#
# >

scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid

clear @s diamond_shovel
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond_shovel"}},sort=nearest,limit=1]
item replace entity @s hotbar.1 with diamond_shovel{mainhand:1,display:{Name:'[{"text":"Wavebreaker","italic":false,"bold":true,"color":"aqua"}]'},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:8.0,Operation:0,UUID:[I;1028214595,1066950744,1016402789,1603413261]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"mainhand",Amount:-0.4,Operation:2,UUID:[I;1028214595,1066950744,1016402789,1603413261]}],HideFlags:7} 1

execute at @s run function dafi:internal/class/storm/particle/particle6
execute if predicate dafi:is_sneaking at @s run function dafi:internal/class/storm/particle/particle7

execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~100000000 ~ 100000000 0.7 1
execute at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..100] ~ ~100000000 ~ 100000000 2

execute if entity @s[team=red] if predicate dafi:is_sneaking at @s as @a[distance=..5,team=!red] run scoreboard players set @s delta.addition.magnitude 7500
execute if entity @s[team=red] if predicate dafi:is_sneaking at @s as @a[distance=..5,team=!red] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[team=red] at @s as @a[distance=..5,team=!red] run scoreboard players set @s dafi.slow.duration 20
execute if entity @s[team=red] at @s as @a[distance=..5,team=!red] if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

execute if entity @s[team=blue] if predicate dafi:is_sneaking at @s as @a[distance=..5,team=!blue] run scoreboard players set @s delta.addition.magnitude 7500
execute if entity @s[team=blue] if predicate dafi:is_sneaking at @s as @a[distance=..5,team=!blue] at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[team=red] at @s as @a[distance=..5,team=!blue] run scoreboard players set @s dafi.slow.duration 20
execute if entity @s[team=blue] at @s as @a[distance=..5,team=!blue] if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

execute if entity @s[team=ffa] if predicate dafi:is_sneaking at @s as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid run scoreboard players set @s delta.addition.magnitude 7500
execute if entity @s[team=ffa] if predicate dafi:is_sneaking at @s as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid at @s rotated 0 -90 run function dafi:internal/mechanics/addition/add_motion
execute if entity @s[team=ffa] at @s as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid run scoreboard players set @s dafi.slow.duration 20
execute if entity @s[team=ffa] at @s as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

scoreboard players reset #temp dafi.sbsid

tag @s remove dafi.storm.launched
tag @s remove dafi.storm.usedslam

#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s run function dafi:internal/class/storm/particle/particle4
#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s run particle minecraft:dust 0.1 1 0.9 3 ~ ~ ~ 2 0 2 1 300 force
#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s[] run effect give @e[distance=..4.5,tag=!dafi.storm.garden] instant_damage 1 0 true
#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s[] run scoreboard players add @a[distance=..4.5,tag=!dafi.storm.garden] dafi.slow.duration 50


#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1.9

#execute if score @s[tag=garden] dafi.storm.shovel matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
#execute if score @s[tag=garden] dafi.storm.shovel matches 5.. at @s run summon creeper ^ ^ ^-1 {Fuse:0,ExplosionRadius:-3}
#execute if score @s[tag=dafi.storm.garden] dafi.storm.shovel matches 5.. run scoreboard players set @s dafi.storm.shovel 119