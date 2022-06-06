execute at @s run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.2 75 force
execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..2] run particle minecraft:glow ~ ~ ~ 4 0 4 10 200 force
execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..2] run particle minecraft:glow ~ ~ ~ 4 0 4 10 200 force
execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..2] run particle minecraft:dust 0.1 1 0.9 3 ~ ~-0.1 ~ 2.6 0 2.6 1 300 force
execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..2] run particle minecraft:dust 0.1 1 0.9 3 ~ ~-0.1 ~ 2.6 0 2.6 1 300 force

execute at @s run particle minecraft:warped_spore ~ ~ ~ 0 0 0 10 200 force
execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..2] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..2] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1 0.1
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 2

#Damage Close
execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..2] run effect give @a[team=blue,distance=..4.5] minecraft:instant_damage 1 9
execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..2] run effect give @a[team=red,distance=..4.5] minecraft:instant_damage 1 9

#Damage Far
execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..2] run effect give @a[team=blue,distance=..2.25] minecraft:instant_damage 1 1
execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..2] run effect give @a[team=red,distance=..2.25] minecraft:instant_damage 1 1
execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..2] run effect give @a[team=blue,distance=2.25..4.5] minecraft:instant_damage 1 0
execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..2] run effect give @a[team=red,distance=2.25..4.5] minecraft:instant_damage 1 0
execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..2] run effect give @a[team=blue,distance=..4.5] minecraft:slowness 3 2
execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..2] run effect give @a[team=red,distance=..4.5] minecraft:slowness 3 2

#Delete Trident
kill @e[type=trident,nbt={inGround:1b}]




























