execute at @s run particle minecraft:dust 0.2 1 1 3 ~ ~-0.1 ~ 1 1 1 1 40 force

execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..5] run function dafi:class/storm/strike/redstrike
execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..5] run function dafi:class/storm/strike/bluestrike
execute at @s[nbt={Trident:{tag:{tred:1}}}] run function dafi:class/storm/strike/redweak
execute at @s[nbt={Trident:{tag:{tblue:1}}}] run function dafi:class/storm/strike/blueweak
execute at @s run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 1 0.1
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 2

#execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..5] run particle minecraft:glow ~ ~ ~ 2 2 2 10 25 force
#execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..5] run particle minecraft:glow ~ ~ ~ 2 2 2 10 25 force
#execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..5] run particle minecraft:dust 0.1 1 0.9 3 ~ ~-0.1 ~ 1 1 1 1 15 force
#execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..5] run particle minecraft:dust 0.1 1 0.9 3 ~ ~-0.1 ~ 1 1 1 1 15 force
#execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..5] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
#execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..5] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2

#Damage Close
# execute at @s[nbt={Trident:{tag:{tred:1}}}] if entity @a[team=red,tag=strike,distance=..5] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3}
# execute at @s[nbt={Trident:{tag:{tblue:1}}}] if entity @a[team=blue,tag=strike,distance=..5] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3}

#Damage Far
# execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..5] run effect give @a[team=blue,distance=..2.25] minecraft:instant_damage 1 1
# execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..5] run effect give @a[team=red,distance=..2.25] minecraft:instant_damage 1 1
# execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..5] run effect give @a[team=blue,distance=2.25..4.5] minecraft:instant_damage 1 0
# execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..5] run effect give @a[team=red,distance=2.25..4.5] minecraft:instant_damage 1 0
# execute at @s[nbt={Trident:{tag:{tred:1}}}] unless entity @a[team=red,tag=strike,distance=..5] run effect give @a[team=blue,distance=..4.5] minecraft:slowness 3 2
# execute at @s[nbt={Trident:{tag:{tblue:1}}}] unless entity @a[team=blue,tag=strike,distance=..5] run effect give @a[team=red,distance=..4.5] minecraft:slowness 3 2

#Delete Trident
kill @e[type=trident,nbt={inGround:1b}]




























