scoreboard players set @s delta.addition.magnitude 2500
execute at @s run summon marker ~ ~ ~ {Rotation:[0.0f,90.0f],Tags:["swag"]}
execute at @s rotated as @e[type=marker,tag=swag,limit=1,sort=nearest] run function dafi:mechanics/bigpapi_delta/addition/add_motion
execute at @s run kill @e[type=marker,tag=swag,limit=1,sort=nearest]