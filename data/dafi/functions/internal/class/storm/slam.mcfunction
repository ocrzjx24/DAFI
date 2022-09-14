tag @s add dafi.storm.usedslam

execute at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~100000000 ~ 100000000 1 1

execute at @s positioned ~ ~2 ~ run function dafi:internal/class/storm/particle/particle4

scoreboard players set @s delta.addition.magnitude 15000
execute at @s rotated 0 90 run function dafi:internal/mechanics/addition/add_motion

execute at @s run summon lightning_bolt ~ 14000 ~

# add a noise here please
#execute at @s run playsound minecraft:item.trident.thunder master @a[distance=..100] ~ ~ ~ 1000 2 1