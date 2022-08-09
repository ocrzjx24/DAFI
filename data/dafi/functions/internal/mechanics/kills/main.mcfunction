execute as @a[scores={dafi.killcheck=1}] run playsound minecraft:entity.dragon_fireball.explode master @s[scores={dafi.killcheck=1}] ~ ~ ~ 1 10 1 
execute at @a[scores={dafi.killstreak=3,dafi.killcheck=1}] run playsound minecraft:entity.wither.spawn voice @a ~ ~ ~ 100000 2
execute at @a[scores={dafi.killstreak=5,dafi.killcheck=1}] run playsound minecraft:block.end_portal.spawn voice @a ~ ~ ~ 100000 2
scoreboard players set @a[scores={dafi.killstreak=5..}] dafi.killstreak 4
scoreboard players reset @a[scores={deathcheck=1..}] dafi.killstreak
scoreboard players reset @a[scores={dafi.killcheck=1..}] dafi.killcheck
