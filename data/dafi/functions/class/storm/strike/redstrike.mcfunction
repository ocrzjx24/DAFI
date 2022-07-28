particle minecraft:glow ~ ~ ~ 2 2 2 10 25 force
particle minecraft:sonic_boom ~ ~ ~ 1 1 1 1000 20 normal

# playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
# summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3}

execute at @s run function dafi:class/storm/strike/rocketjumpwaltz

execute at @s run tag @a[team=red,tag=strike,distance=..5] add garden