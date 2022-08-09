
execute if entity @s anchored eyes run kill @e[type=arrow,tag=!dafi.arrow.assigned]

execute if entity @s[team=red] at @s run function dafi:internal/class/siege/raycast/redshotgun
execute if entity @s[team=blue] at @s run function dafi:internal/class/siege/raycast/blueshotgun

execute at @s run stopsound @a * minecraft:item.crossbow.shoot

scoreboard players set @s[scores={dafi.siege.shotgunShots=1..5}] dafi.siege.shotgunCD 60

scoreboard players set @s[scores={dafi.siege.shotgunShots=1}] dafi.siege.shotgunShots 0

scoreboard players set @s[scores={dafi.siege.shotgunShots=2}] dafi.siege.shotgunShots 1

scoreboard players set @s[scores={dafi.siege.shotgunShots=3}] dafi.siege.shotgunShots 2

scoreboard players set @s[scores={dafi.siege.shotgunShots=4}] dafi.siege.shotgunShots 3

scoreboard players set @s[scores={dafi.siege.shotgunShots=5}] dafi.siege.shotgunShots 4

scoreboard players set @s[scores={dafi.siege.shotgunShots=1..5}] dafi.siege.shotgunCD 60
