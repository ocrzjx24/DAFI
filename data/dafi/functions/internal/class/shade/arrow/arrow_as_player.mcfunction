playsound entity.firework_rocket.launch master @s ~ ~1000 ~ 1000 1.1
playsound block.lava.extinguish master @s ~ ~1000 ~ 1000 2
#playsound entity.blaze.hurt master @s ~ ~1000 ~ 1000 1.2
execute if entity @s run playsound entity.firework_rocket.blast master @s ~ ~1000 ~ 1000 0.5

execute if entity @s run summon arrow ^0.3 ^0.2 ^ {Tags:["this","fast","dafi.arrow.shade","dafi.arrow.processed"]}
execute if entity @s run summon arrow ^-0.3 ^0.2 ^ {Tags:["this","fast","dafi.arrow.shade","dafi.arrow.processed"]}
execute if entity @s run summon arrow ^0.6 ^-0.2 ^ {Tags:["this","fast","dafi.arrow.shade","dafi.arrow.processed"]}
execute if entity @s run summon arrow ^-0.6 ^-0.2 ^ {Tags:["this","fast","dafi.arrow.shade","dafi.arrow.processed"]}
