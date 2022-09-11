tag @s add dafi.arrow.inground
scoreboard players operation #temp dafi.sbsid = @s dafi.sbsid

execute if entity @s[tag=dafi.arrow.blue,tag=dafi.arrow.explode] as @a[team=!blue,distance=..8.83,advancements={dafi:shield=false}] run function dafi:internal/mechanics/arrow/arrow_aoe/summon
execute if entity @s[tag=dafi.arrow.red,tag=dafi.arrow.explode] as @a[team=!red,distance=..8.83,advancements={dafi:shield=false}] run function dafi:internal/mechanics/arrow/arrow_aoe/summon
#execute if entity @s[tag=dafi.arrow.ffa,tag=dafi.arrow.explode] as @a[distance=..8.83,advancements={dafi:shield=false}] unless score @s dafi.sbsid = #temp dafi.sbsid run function dafi:internal/mechanics/arrow/arrow_aoe/summon
execute if entity @s[tag=dafi.arrow.ffa,tag=dafi.arrow.explode] as @a[distance=..8.83,advancements={dafi:shield=false}] unless score @s dafi.sbsid = #temp dafi.sbsid run function dafi:internal/mechanics/arrow/arrow_aoe/summon

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

scoreboard players reset #temp dafi.sbsid

tag @s remove dafi.arrow.inground
kill @e[type=arrow,tag=!dafi.arrow.donotkill,nbt={inGround:1b}]