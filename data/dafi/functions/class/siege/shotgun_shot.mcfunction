# say bam

## FIX
execute if entity @s anchored eyes run kill @e[type=arrow,nbt={Color:0},limit=1,sort=nearest]

execute if entity @s[team=red] at @s run function dafi:class/siege/raycast/redshotgun
# execute if entity @s[team=blue] at @s run function dafi:class/siege/raycast/blueshotgun

stopsound @a master minecraft:item.crossbow.shoot

scoreboard players set @s shotgunCD 1