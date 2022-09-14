scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid

execute at @s run particle minecraft:dust 0.2 1 1 2.5 ~ ~-0.1 ~ 1 1 1 1 40 force
execute at @s run particle glow ~ ~1.5 ~ 0 0 0 0.4 5 force
execute at @s run particle electric_spark ~ ~1.5 ~ 0 0 0 0.4 5 force

execute at @s run playsound minecraft:particle.soul_escape master @a[distance=..50] ~ ~ ~ 1 0.1
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a[distance=..50] ~ ~ ~ 0.5 2
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2

execute at @s[nbt={Trident:{tag:{tred:1}}}] as @a[distance=..5,team=!red] run scoreboard players set @s dafi.slow.duration 10
execute at @s[nbt={Trident:{tag:{tred:1}}}] as @a[distance=..5,team=!red] if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

execute at @s[nbt={Trident:{tag:{tblue:1}}}] as @a[distance=..5,team=!blue] run scoreboard players set @s dafi.slow.duration 10
execute at @s[nbt={Trident:{tag:{tblue:1}}}] as @a[distance=..5,team=!blue] if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

execute at @s[nbt={Trident:{tag:{tffa:1}}}] as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid run scoreboard players set @s dafi.slow.duration 10
execute at @s[nbt={Trident:{tag:{tffa:1}}}] as @a[distance=..5] unless score #temp dafi.sbsid = @s dafi.sbsid if entity @s[nbt={HurtTime:0s}] run scoreboard players set @s hp_dmg 8

execute at @s run function dafi:internal/class/storm/strike/rocketjumpwaltz

execute at @s as @a[tag=dafi.storm,distance=..7.5,nbt={OnGround:0b}] run function dafi:internal/class/storm/launch

scoreboard players reset #temp dafi.sbsid

#kill trident
kill @s





























