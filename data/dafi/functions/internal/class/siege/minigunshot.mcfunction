#execute if entity @s anchored eyes run kill @e[type=arrow,tag=!dafi.arrow.assigned]

#execute at @s run stopsound @a * minecraft:item.crossbow.shoot

scoreboard players set @s[scores={dafi.siege.shotgunShots=1..}] dafi.siege.shotgunCD 4

scoreboard players remove @s[scores={dafi.siege.shotgunShots=1..30}] dafi.siege.shotgunShots 1

scoreboard players set @s[scores={dafi.siege.shotgunShots=1..}] dafi.siege.shotgunCD 4
