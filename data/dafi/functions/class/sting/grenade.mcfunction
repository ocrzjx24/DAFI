## SPECTRAL SCOREBOARD
scoreboard players add @e[type=marker, tag=redGlow] spectral 1
scoreboard players add @e[type=marker, tag=blueGlow] spectral 1
scoreboard players add @e[type=armor_stand, tag=redMolotov] spectral 1
scoreboard players add @e[type=armor_stand, tag=blueMolotov] spectral 1 
# scoreboard players add @e[type=marker, tag=redDebuff] spectral 1
# scoreboard players add @e[type=marker, tag=blueDebuff] spectral 1 
kill @e[scores={spectral=80..}]
# kmns

## STELLAR SONAR
# particles
execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust white_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force
execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force

# markers 
#stellar sonar red throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}}] unless entity @e[tag=trackerRed,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["trackerRed"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerRed] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run summon minecraft:marker ~ ~ ~ {Tags:["redGlow"]}
execute as @e[tag=trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run kill @e[type=snowball,limit=1,sort=nearest]
execute as @e[tag=trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run kill @s
#stellar sonar blue throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}}] unless entity @e[tag=trackerBlue,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["trackerBlue"],Invisible:1b,Marker:1b}
execute as @e[tag=trackerBlue] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run summon minecraft:marker ~ ~ ~ {Tags:["blueGlow"]}
execute as @e[tag=trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run kill @e[type=snowball,limit=1,sort=nearest]
execute as @e[tag=trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run kill @s

# stellar sonar red particles and effects
execute at @e[tag=redGlow,scores={spectral=2}] run effect give @e[distance=..10,team=!red] minecraft:glowing 2 0 true
execute at @e[tag=redGlow,scores={spectral=2}] run function dafi:class/sting/recon/stand
execute at @e[tag=redGlow,scores={spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.06 0.1 30 30 force
execute at @e[tag=redGlow,scores={spectral=1}] run playsound minecraft:block.amethyst_block.hit master @a[distance=..10] ~ ~ ~ 2 1.5 1
#stellar sonar blue particles and effects
execute at @e[tag=blueGlow,scores={spectral=2}] run effect give @e[distance=..10,team=!blue] minecraft:glowing 2 0 true
execute at @e[tag=blueGlow,scores={spectral=2}] run function dafi:class/sting/recon/stand
execute at @e[tag=blueGlow,scores={spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.06 0.1 30 30 force
execute at @e[tag=blueGlow,scores={spectral=1}] run playsound minecraft:block.amethyst_block.hit master @a[distance=..10] ~ ~ ~ 2 1.5 1

# sonar titles
title @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] actionbar {"text":"! STUNNED !","bold":true,"color":"gold"}
execute as @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] unless entity @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] run title @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] actionbar {"text":"! MARKED !","bold":true,"color":"white"}


## STINGSHELL
execute at @e[type=minecraft:egg] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute at @e[type=minecraft:egg] run particle minecraft:falling_dust red_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force
#stingshell red throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] unless entity @e[tag=trackerRed2,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["trackerRed2"]}
execute as @e[tag=trackerRed2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["redMolotov","centerMolotov"],Invisible:1b}
execute as @e[tag=trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run kill @e[type=egg,limit=1,sort=nearest]
execute as @e[tag=trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run kill @s
#stingshell blue throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] unless entity @e[tag=trackerBlue2,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["trackerBlue2"]}
execute as @e[tag=trackerBlue2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["blueMolotov","centerMolotov"],Invisible:1b}
execute as @e[tag=trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run kill @e[type=egg,limit=1,sort=nearest]
execute as @e[tag=trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run kill @s

#molotv
execute at @e[tag=redMolotov,scores={spectral=1..}] run effect give @e[distance=..1, team=blue] instant_damage 1 0 true
execute at @e[tag=redMolotov,scores={spectral=1..}] run particle dust 1 0.35 0 2 ~ ~ ~ 0.3 0.1 0.3 0.2 1 force
execute at @e[tag=redMolotov,scores={spectral=1..}] run particle smoke ~ ~ ~ 0.4 0 0.4 0.2 1 force
execute at @e[tag=redMolotov,scores={spectral=1..}] run particle dust 1 0.65 0 2 ~ ~ ~ 0.5 0.2 0.5 0.5 1 force
execute at @e[tag=redMolotov,scores={spectral=1..}] run particle small_flame ~ ~ ~ 0.4 0 0.4 0.1 1 force
execute at @e[tag=redMolotov,tag=centerMolotov,scores={spectral=1}] run playsound minecraft:block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @e[tag=redMolotov,tag=centerMolotov,scores={spectral=6}] run function dafi:class/sting/molotov/redspread1 
execute at @e[tag=redMolotov,tag=centerMolotov,scores={spectral=12}] run function dafi:class/sting/molotov/redspread2 

execute at @e[tag=blueMolotov,scores={spectral=1..}] run effect give @e[distance=..1, team=red] instant_damage 1 0 true
execute at @e[tag=blueMolotov,scores={spectral=1..}] run particle dust 1 0.35 0 2 ~ ~ ~ 0.3 0.1 0.3 0.2 1 force
execute at @e[tag=blueMolotov,scores={spectral=1..}] run particle smoke ~ ~ ~ 0.4 0 0.4 0.2 1 force
execute at @e[tag=blueMolotov,scores={spectral=1..}] run particle dust 1 0.65 0 2 ~ ~ ~ 0.5 0.2 0.5 0.5 1 force
execute at @e[tag=blueMolotov,scores={spectral=1..}] run particle small_flame ~ ~ ~ 0.4 0 0.4 0.1 1 force
execute at @e[tag=blueMolotov,tag=centerMolotov,scores={spectral=1}] run playsound minecraft:block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 2 1
execute at @e[tag=blueMolotov,tag=centerMolotov,scores={spectral=6}] run function dafi:class/sting/molotov/bluespread1
execute at @e[tag=blueMolotov,tag=centerMolotov,scores={spectral=12}] run function dafi:class/sting/molotov/bluespread2 
# execute at @e[tag=redMolotov,scores={spectral=1..80}] run function dafi:class/sting/molotov
# execute at @e[tag=redMolly,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1

#stingshell red particles and effects
#execute at @e[tag=redDebuff,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=redDebuff,scores={spectral=1}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3,Invisible:1}
# execute at @e[tag=redDebuff,scores={spectral=1}] run scoreboard players set @e[distance=..3] hp_dmg 3
# execute at @e[tag=redDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!red] minecraft:instant_damage 1 0 true
# execute at @e[tag=redDebuff] run particle minecraft:dripping_lava ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
#execute at @e[tag=redDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
# kill @e[scores={spectral=80},tag=redDebuff]
#stingshell blue particles and effects
# execute at @e[tag=blueDebuff,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=blueDebuff,scores={spectral=1}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3,Invisible:1}

# execute at @e[tag=blueDebuff,scores={spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=blueDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!blue] minecraft:instant_damage 1 0 true
# execute at @e[tag=blueDebuff] run particle minecraft:falling_water ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
# execute at @e[tag=blueDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
# kill @e[scores={spectral=80},tag=blueDebuff]

#STIM SPLASH
#execute at @e[type=minecraft:potion] run particle minecraft:heart ~ ~1 ~ .1 .1 .1 0.001 1 normal
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:nausea 5 1 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:jump_boost 1 3 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:regeneration 5 1 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:speed 3 4 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:instant_health 1 1 true
#effect clear @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:luck