scoreboard players set $strength delta.api.launch 10000
execute at @s run summon marker ~ ~ ~ {Rotation:[0.0f,90.0f],Tags:["swag"]}
execute at @s rotated as @e[type=marker,tag=swag,limit=1,sort=nearest] run function dafi:mechanics/bigpapi_delta/api/launch_looking
execute at @s run kill @e[type=marker,tag=swag,limit=1,sort=nearest]
scoreboard players reset $strength delta.api.launch
tag @s[nbt={OnGround:0b}] add isPlunging
advancement revoke @s only dafi:eye