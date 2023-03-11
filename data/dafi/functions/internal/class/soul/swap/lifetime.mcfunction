tp @s ~ ~ ~ ~1 ~
function dafi:internal/class/soul/swap/particle
execute if entity @s[tag=dafi.soul.swap.soul_circle.red] as @a[distance=..7,team=red] if data entity @s {OnGround:1b} run effect give @s speed 1 9 true
execute if entity @s[tag=dafi.soul.swap.soul_circle.blue] as @a[distance=..7,team=blue] if data entity @s {OnGround:1b} run effect give @s speed 1 9 true

scoreboard players add @s dafi.soul.swap.lifetime 1
execute if score @s dafi.soul.swap.lifetime matches 400.. run kill @s
