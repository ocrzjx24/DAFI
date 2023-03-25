scoreboard players set @s delta.addition.magnitude 2000
execute at @s rotated ~ 90 run function dafi:internal/mechanics/addition/add_motion
tag @s[nbt={OnGround:0b}] add isPlunging
advancement revoke @s only dafi:eye