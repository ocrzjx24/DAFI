execute as @a[scores={killcheck=1}] run playsound minecraft:entity.dragon_fireball.explode master @s[scores={killcheck=1}] ~ ~ ~ 1 10 1 
execute at @a[scores={killstreak=3,killcheck=1}] run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 100000 2
execute at @a[scores={killstreak=5,killcheck=1}] run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 100000 2
scoreboard players set @a[scores={killstreak=5..}] killstreak 4
scoreboard players reset @a[scores={deathcheck=1..}] killstreak
scoreboard players reset @a[scores={killcheck=1..}] killcheck
