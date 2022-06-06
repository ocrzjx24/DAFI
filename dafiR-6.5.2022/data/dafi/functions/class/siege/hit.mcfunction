execute at @s[team=red] as @e[team=!red,scores={hitcount=1..}] run scoreboard players operation @a[scores={hitcount=1..}] damage = @e[scores={hitcount=1..}] hitcount 
execute at @s[team=blue] as @e[team=!blue,scores={hitcount=1..}] run scoreboard players operation @a[scores={hitcount=1..}] damage = @e[scores={hitcount=1..}] hitcount 
execute as @s[team=red] at @e[team=!red,scores={hitcount=1..}] run particle block nether_wart ~ ~1 ~ 0.125 0.5 0.125 1 25
execute as @s[team=blue] at @e[team=!blue,scores={hitcount=1..}] run particle block nether_wart ~ ~1 ~ 0.125 0.5 0.125 1 25

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=1}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-1","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=2}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-2","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=3}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-3","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=4}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-4","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=5}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-5","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=6}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-6","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=7}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-7","color":"red"}',CustomNameVisible:1b}

execute if score #spread siegeRandom matches 0 as @s[team=red] at @e[team=!red,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 0 as @s[team=blue] at @e[team=!blue,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.05,0.1,0.05],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=red] at @e[team=!red,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 1 as @s[team=blue] at @e[team=!blue,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=red] at @e[team=!red,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 2 as @s[team=blue] at @e[team=!blue,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=red] at @e[team=!red,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 3 as @s[team=blue] at @e[team=!blue,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[0.1,0.1,-0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=red] at @e[team=!red,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}
execute if score #spread siegeRandom matches 4 as @s[team=blue] at @e[team=!blue,scores={hitcount=8}] run summon item ~ ~1.5 ~ {Item:{id:"minecraft:redstone_block",Count:1b},PickupDelay:32767s,Age:-32768s,Tags:["blood"],Motion:[-0.1,0.1,-0.1],CustomName:'{"text":"-8","color":"red"}',CustomNameVisible:1b}

execute as @e[scores={hitcount=1..}] run scoreboard players set @e[scores={hitcount=1..}] hitcount 0
execute as @e[scores={damage=1..}] run function dafi:mechanics/damage/deal_damage
execute as @e[scores={damage=1..}] run scoreboard players set @e[scores={damage=1..}] damage 0 
