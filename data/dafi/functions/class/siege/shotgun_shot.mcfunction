# say bam
tag @s add dafi.siege.shotgun.test
## FIX
execute if entity @s anchored eyes run kill @e[type=arrow,nbt={Color:0},limit=1,sort=nearest]

execute if entity @s[team=red] at @s run function dafi:class/siege/raycast/redshotgun
execute if entity @s[team=blue] at @s run function dafi:class/siege/raycast/blueshotgun

execute at @s run stopsound @a * minecraft:item.crossbow.shoot

scoreboard players set @s[scores={shotgunShots=1..5}] shotgunCD 60

scoreboard players set @s[scores={shotgunShots=1}] shotgunShots 0

scoreboard players set @s[scores={shotgunShots=2}] shotgunShots 1

scoreboard players set @s[scores={shotgunShots=3}] shotgunShots 2

scoreboard players set @s[scores={shotgunShots=4}] shotgunShots 3

scoreboard players set @s[scores={shotgunShots=5}] shotgunShots 4

scoreboard players set @s[scores={shotgunShots=1..5}] shotgunCD 60

tag @s remove dafi.siege.shotgun.test