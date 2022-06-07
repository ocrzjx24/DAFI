particle minecraft:glow ~ ~ ~ 2 2 2 10 25 force
particle minecraft:sonic_boom ~ ~ ~ 1 1 1 1000 20 normal
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3}
effect give @a[team=blue,distance=..2.25] minecraft:instant_damage 1 1
effect give @a[team=blue,distance=2.25..4.5] minecraft:instant_damage 1 0
effect give @a[team=blue,distance=..4.5] minecraft:slowness 3 2