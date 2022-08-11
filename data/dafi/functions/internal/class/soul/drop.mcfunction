playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 1 1.4 0.5
# particle dust 1 0.8 0 3 ~ ~ ~ 1 1 1 10 100 force
execute at @s run function dafi:internal/class/soul/particle

scoreboard players set @s delta.addition.magnitude 12500
execute at @s run function dafi:internal/mechanics/addition/add_motion