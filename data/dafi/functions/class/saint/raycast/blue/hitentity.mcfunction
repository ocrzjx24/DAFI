#execute as @s[tag=!arrowEyesHit] run say "Hit Eyes Close"
scoreboard players set $strength delta.api.launch 10000
execute as @e[distance=..5,team=!blue] at @s rotated as @a[tag=this,sort=nearest,limit=1] run function dafi:mechanics/bigpapi_delta/api/launch_looking
scoreboard players reset $strength delta.api.launch