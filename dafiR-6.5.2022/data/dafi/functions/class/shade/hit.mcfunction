## Particles
execute as @s[team=red] at @a[team=!red,scores={hitcount=1..}] run particle squid_ink ~ ~1 ~ 0 0 0 0.5 25 force
execute as @s[team=blue] at @a[team=!blue,scores={hitcount=1..}] run particle squid_ink ~ ~1 ~ 0 0 0 0.5 25 force

## Add Tag
execute as @s[team=red] at @a[team=!red,scores={hitcount=1..}] run tag @a[team=!red,scores={hitcount=1..}] add bound
execute as @s[team=blue] at @a[team=!blue,scores={hitcount=1..}] run tag @a[team=!blue,scores={hitcount=1..}] add bound

## Sound
execute as @s[team=red] if entity @a[team=!red,scores={hitcount=1..}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1
execute as @s[team=blue] if entity @a[team=!blue,scores={hitcount=1..}] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 1

execute as @a[team=red,scores={hitcount=1..}] run scoreboard players reset @a[team=red] bound
execute as @a[team=blue,scores={hitcount=1..}] run scoreboard players reset @a[team=blue] bound

execute as @e[scores={hitcount=1..}] run scoreboard players set @e[scores={hitcount=1..}] hitcount 0