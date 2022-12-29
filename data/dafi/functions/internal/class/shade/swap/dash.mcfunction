execute at @s run playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.9
execute at @s run playsound item.trident.riptide_3 master @a ~ ~ ~ 1 1.5

scoreboard players set .itt.particle4.min dafi.raycast 0
scoreboard players set .itt.particle4.max dafi.raycast 15
execute at @s rotated ~ 0 run function dafi:internal/class/shade/slash/fire
scoreboard players reset .itt.particle4.min dafi.raycast
scoreboard players reset .itt.particle4.max dafi.raycast

scoreboard players add @s delta.addition.magnitude 13000
execute at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion