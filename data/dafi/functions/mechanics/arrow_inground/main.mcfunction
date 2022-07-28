# execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]}]},HideFlags:63}}}
# execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run execute at @e[type=arrow] run effect give @e[distance=..5] instant_damage 1 1 true
#execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run tag @e[type=!arrow,type=!marker,distance=..3] add arrowInit
#execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b,Color:16711680}] as @e[type=!marker,type=!arrow,team=!red,distance=..4.83] run function dafi:mechanics/arrow_inground/summon
execute if score #weapon weapon matches 1 at @e[type=arrow] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b,Color:255}] as @a[team=!blue,distance=..6.83,advancements={dafi:shield=false}] run function dafi:mechanics/arrow_inground/bluesummon
execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b,Color:16711680}] as @a[team=!red,distance=..6.83,advancements={dafi:shield=false}] run function dafi:mechanics/arrow_inground/redsummon
execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run particle minecraft:firework ~ ~ ~ 0 0 0 0.3 100 force
execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1.4

# execute if score #weapon weapon matches 1 at @e[type=arrow,nbt={inGround:1b}] run summon creeper ~ ~ ~ {ExplosionRadius:-3,Fuse:0}

execute if score #rocketjump weapon matches 1 run function dafi:mechanics/arrow_inground/rj250

execute if score #weapon weapon matches 1 run kill @e[type=arrow,nbt={inGround:1b}]
