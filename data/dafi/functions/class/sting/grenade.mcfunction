#SPECTRAL SCOREBOARD
scoreboard players add @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] spectral 1
kill @e[scores={spectral=100..}]

#STELLAR SONAR
execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust white_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 3 force
execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 3 force
#stellar sonar red throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}}] unless entity @e[tag=trackerRed,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["trackerRed"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerRed] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run summon minecraft:spectral_arrow ~ ~ ~ {Tags:["redGlow"]}
execute as @e[tag=trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run kill @s
#stellar sonar blue throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}}] unless entity @e[tag=trackerBlue,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["trackerBlue"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerBlue] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run summon minecraft:spectral_arrow ~ ~ ~ {Tags:["blueGlow"]}
execute as @e[tag=trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run kill @s
#stellar sonar red particles and effects
execute at @e[tag=redGlow,scores={spectral=2}] run effect give @e[distance=..10,team=!red] minecraft:glowing 1 0 true
execute at @e[tag=redGlow,scores={spectral=42}] run effect give @e[distance=..10,team=!red] minecraft:glowing 1 0 true
execute at @e[tag=redGlow,scores={spectral=82}] run effect give @e[distance=..10,team=!red] minecraft:glowing 1 0 true
execute at @e[tag=redGlow,scores={spectral=82}] run effect give @e[distance=..10,team=!red] minecraft:slowness 3 2 true
execute at @e[tag=redGlow,scores={spectral=2}] run function dafi:class/sting/stand
execute at @e[tag=redGlow,scores={spectral=42}] run function dafi:class/sting/stand
execute at @e[tag=redGlow,scores={spectral=82}] run function dafi:class/sting/stand2
execute at @e[tag=redGlow,scores={spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=redGlow,scores={spectral=42}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=redGlow,scores={spectral=82}] run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=redGlow,scores={spectral=1}] run playsound minecraft:block.note_block.bit master @a[distance=..10] ~ ~ ~ 2 1.5 1
execute at @e[tag=redGlow,scores={spectral=42}] run playsound minecraft:block.note_block.bit master @a[distance=..10] ~ ~ ~ 2 1.5 1
execute at @e[tag=redGlow,scores={spectral=82}] run playsound minecraft:entity.bee.sting master @a[distance=..10] ~ ~ ~ 2 0.5 1
#stellar sonar blue particles and effects
execute at @e[tag=blueGlow,scores={spectral=2}] run effect give @e[distance=..10,team=!blue] minecraft:glowing 1 0 true
execute at @e[tag=blueGlow,scores={spectral=42}] run effect give @e[distance=..10,team=!blue] minecraft:glowing 1 0 true
execute at @e[tag=blueGlow,scores={spectral=82}] run effect give @e[distance=..10,team=!blue] minecraft:glowing 1 0 true
execute at @e[tag=blueGlow,scores={spectral=82}] run effect give @e[distance=..10,team=!blue] minecraft:slowness 3 2 true
execute at @e[tag=blueGlow,scores={spectral=2}] run function dafi:class/sting/stand
execute at @e[tag=blueGlow,scores={spectral=42}] run function dafi:class/sting/stand
execute at @e[tag=blueGlow,scores={spectral=82}] run function dafi:class/sting/stand2
execute at @e[tag=blueGlow,scores={spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=blueGlow,scores={spectral=42}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=blueGlow,scores={spectral=82}] run particle minecraft:wax_on ~ ~0.5 ~ 0.1 0.1 0.1 30 100 force
execute at @e[tag=blueGlow,scores={spectral=1}] run playsound minecraft:block.note_block.bit master @a[distance=..10] ~ ~ ~ 2 1.5 1
execute at @e[tag=blueGlow,scores={spectral=42}] run playsound minecraft:block.note_block.bit master @a[distance=..10] ~ ~ ~ 2 1.5 1
execute at @e[tag=blueGlow,scores={spectral=82}] run playsound minecraft:entity.bee.sting master @a[distance=..10] ~ ~ ~ 2 0.5 1

#SCAN TITLE
title @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] actionbar {"text":"! STUNNED !","bold":true,"color":"gold"}
execute as @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] unless entity @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] run title @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] actionbar {"text":"! MARKED !","bold":true,"color":"white"}

#STINGSHELL
execute at @e[type=minecraft:egg] run particle minecraft:falling_dust oak_leaves ~ ~0.2 ~ .1 .1 .1 0.001 3 force
execute at @e[type=minecraft:egg] run particle minecraft:falling_dust lime_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 3 force
#stingshell red throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] unless entity @e[tag=trackerRed2,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["trackerRed2"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerRed2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run summon minecraft:spectral_arrow ~ ~ ~ {Tags:["redDebuff"]}
execute as @e[tag=trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run kill @s
#stingshell blue throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] unless entity @e[tag=trackerBlue2,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["trackerBlue2"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerBlue2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run summon minecraft:spectral_arrow ~ ~ ~ {Tags:["blueDebuff"]}
execute as @e[tag=trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run kill @s
#stingshell red particles and effects
execute at @e[tag=redDebuff,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @e[tag=redDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!red] minecraft:instant_damage 1 0 true
execute at @e[tag=redDebuff] run particle minecraft:dripping_lava ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
execute at @e[tag=redDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
kill @e[scores={spectral=80},tag=redDebuff]
#stingshell blue particles and effects
execute at @e[tag=blueDebuff,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @e[tag=blueDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!blue] minecraft:instant_damage 1 0 true
execute at @e[tag=blueDebuff] run particle minecraft:falling_water ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
execute at @e[tag=blueDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
kill @e[scores={spectral=80},tag=blueDebuff]

#STIM SPLASH
execute at @e[type=minecraft:potion] run particle minecraft:heart ~ ~1 ~ .1 .1 .1 0.001 1 normal
effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:nausea 5 1 true
effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:jump_boost 1 3 true
effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:regeneration 5 1 true
effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:speed 3 4 true
effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:instant_health 1 1 true
effect clear @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:luck