scoreboard players set @s delta.addition.magnitude 10000
execute at @s run summon marker ~ ~ ~ {Rotation:[0.0f,90.0f],Tags:["swag"]}
execute at @s rotated as @e[type=marker,tag=swag,limit=1,sort=nearest] run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
execute at @s run kill @e[type=marker,tag=swag,limit=1,sort=nearest]
tag @s[nbt={OnGround:0b}] add isPlunging
advancement revoke @s only dafi:eye