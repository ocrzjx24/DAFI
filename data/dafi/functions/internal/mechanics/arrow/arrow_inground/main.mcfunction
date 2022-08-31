#execute at @e[type=arrow,nbt={inGround:1b}] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]},{Type:4,Flicker:0,Trail:0,Colors:[I;11743532]}]},HideFlags:63}}}
#execute at @e[type=arrow,nbt={inGround:1b}] run execute at @e[type=arrow] run effect give @e[distance=..5] instant_damage 1 1 true
#execute at @e[type=arrow,nbt={inGround:1b}] run tag @e[type=!arrow,type=!marker,distance=..3] add arrowInit
#execute at @e[type=arrow,nbt={inGround:1b,Color:16711680}] as @e[type=!marker,type=!arrow,team=!red,distance=..4.83] run function dafi:mechanics/arrow_inground/summon

#execute at @e[type=arrow] run particle firework ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=dafi.arrow.blue,tag=dafi.arrow.explode] as @a[team=!blue,distance=..6.83,advancements={dafi:shield=false}] run function dafi:internal/mechanics/arrow/arrow_inground/bluesummon
execute if entity @s[tag=dafi.arrow.red,tag=dafi.arrow.explode] as @a[team=!red,distance=..6.83,advancements={dafi:shield=false}] run function dafi:internal/mechanics/arrow/arrow_inground/redsummon
execute if entity @s[tag=dafi.arrow.explode] run particle minecraft:firework ~ ~ ~ 0 0 0 0.3 100 force
execute if entity @s[tag=dafi.arrow.explode] run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1.4

execute if entity @s[tag=dafi.arrow.explode] if score #universal dafi.rocketjump matches 1 run function dafi:internal/mechanics/arrow/rocketjump/main

execute if entity @s[tag=dafi.arrow.siege] run function dafi:internal/class/siege/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.saint] run function dafi:internal/class/saint/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.slay] run function dafi:internal/class/slay/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.sting] run function dafi:internal/class/sting/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.soul] run function dafi:internal/class/soul/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.steel] run function dafi:internal/class/steel/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.storm] run function dafi:internal/class/storm/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.shade] run function dafi:internal/class/shade/arrow/arrow_inground
execute if entity @s[tag=dafi.arrow.swamp,tag=!dafi.arrow.swamp.tunnel] run function dafi:internal/class/swamp/arrow/arrow_inground


#function dafi:internal/mechanics/arrow/redirect

kill @e[type=arrow,tag=!dafi.arrow.donotkill,nbt={inGround:1b}]