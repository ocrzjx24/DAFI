playsound entity.player.splash master @a[distance=..25] ~ ~ ~ 1 1.4 0
playsound entity.splash_potion.break master @a[distance=..25] ~ ~ ~ 1 1 0

particle minecraft:item glass ~ ~0.2 ~ 0.1 0.1 0.1 0 10 force
particle minecraft:falling_dust green_concrete_powder ~ ~0.2 ~ 1.5 1.5 1.5 10 15 force
particle minecraft:falling_dust lime_concrete_powder ~ ~0.2 ~ 1.5 1.5 1.5 10 25 force
particle minecraft:item slime_block ~ ~0.6 ~ 0 0 0 0.25 50 force

effect give @a[distance=..4] instant_health 1 0 true

kill @s