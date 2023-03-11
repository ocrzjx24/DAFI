playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 1 1.4 0.5
# particle dust 1 0.8 0 3 ~ ~ ~ 1 1 1 10 100 force
execute at @s run function dafi:internal/class/soul/particle1
#execute at @s run function dafi:internal/class/soul/particle2 
#execute at @s run function dafi:internal/class/soul/particle3

scoreboard players set @s delta.addition.magnitude 10000
execute at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion