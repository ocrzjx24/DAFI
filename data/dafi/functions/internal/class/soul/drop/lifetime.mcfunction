tp @s[tag=!dafi.soul.swap.soul_circle.extra] ~ ~ ~ ~-2 ~
tp @s[tag=dafi.soul.swap.soul_circle.extra] ~ ~ ~ ~2 ~
function dafi:internal/class/soul/drop/particle
execute if entity @s[tag=dafi.soul.swap.soul_circle.red] as @a[distance=..7,team=red] if data entity @s {OnGround:1b} run effect give @s speed 1 4 true
execute if entity @s[tag=dafi.soul.swap.soul_circle.blue] as @a[distance=..7,team=blue] if data entity @s {OnGround:1b} run effect give @s speed 1 4 true

scoreboard players add @s dafi.soul.swap.lifetime 1
execute if score @s dafi.soul.swap.lifetime matches 200.. run kill @s
