## dafi.sting.spectral SCOREBOARD
scoreboard players add @e[type=marker, tag=dafi.sting.redGlow] dafi.sting.spectral 1
scoreboard players add @e[type=marker, tag=dafi.sting.blueGlow] dafi.sting.spectral 1

scoreboard players add @e[type=armor_stand, tag=dafi.sting.redTall] dafi.sting.spectral 1
scoreboard players add @e[type=armor_stand, tag=dafi.sting.blueTall] dafi.sting.spectral 1

scoreboard players add @e[type=armor_stand, tag=dafi.sting.redMolotov] dafi.sting.spectral 1
scoreboard players add @e[type=armor_stand, tag=dafi.sting.blueMolotov] dafi.sting.spectral 1 

kill @e[scores={dafi.sting.spectral=2000..}]
# kmns

## STELLAR SONAR
# particles
#execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust white_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force
#execute at @e[type=minecraft:snowball] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute at @e[type=minecraft:snowball] run particle minecraft:snowflake ~ ~0.2 ~ .1 .1 .1 0.001 1 force

# markers 
#stellar sonar red throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}}] unless entity @e[tag=dafi.sting.trackerRed,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.trackerRed"]}
execute as @e[tag=dafi.sting.trackerRed] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{red:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=dafi.sting.trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.redGlow"]}
execute as @e[tag=dafi.sting.trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run kill @e[type=snowball,limit=1,sort=nearest]
execute as @e[tag=dafi.sting.trackerRed] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{red:1}}}] run kill @s
#stellar sonar blue throw
execute at @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}}] unless entity @e[tag=dafi.sting.trackerBlue,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.trackerBlue"]}
execute as @e[tag=dafi.sting.trackerBlue] at @s run tp @s @e[type=minecraft:snowball,nbt={Item:{tag:{blue:1}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=dafi.sting.trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.blueGlow"]}
execute as @e[tag=dafi.sting.trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run kill @e[type=snowball,limit=1,sort=nearest]
execute as @e[tag=dafi.sting.trackerBlue] at @s unless entity @e[type=minecraft:snowball,distance=..2,nbt={Item:{tag:{blue:1}}}] run kill @s

# stellar sonar red particles and effects
# execute at @e[tag=dafi.sting.redGlow,scores={dafi.sting.spectral=2}] run effect give @a[distance=..10,gamemode=!spectator,team=blue] minecraft:glowing 2 0 true
execute at @e[tag=dafi.sting.redGlow,scores={dafi.sting.spectral=2}] run tag @a[distance=..10,gamemode=!spectator,team=blue] add glow
execute at @e[tag=dafi.sting.redGlow,scores={dafi.sting.spectral=2}] run function dafi:internal/class/sting/recon/stand
execute at @e[tag=dafi.sting.redGlow,scores={dafi.sting.spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.06 0.1 30 30 force
execute at @e[tag=dafi.sting.redGlow,scores={dafi.sting.spectral=1}] run playsound minecraft:block.amethyst_block.hit master @a[] ~ ~ ~ 1 1.5

#stellar sonar blue particles and effects
# execute at @e[tag=dafi.sting.blueGlow,scores={dafi.sting.spectral=2}] run effect give @a[distance=..10,gamemode=!spectator,team=red] minecraft:glowing 2 0 true
execute at @e[tag=dafi.sting.blueGlow,scores={dafi.sting.spectral=2}] run tag @a[distance=..10,gamemode=!spectator,team=red] add glow
execute at @e[tag=dafi.sting.blueGlow,scores={dafi.sting.spectral=2}] run function dafi:internal/class/sting/recon/stand
execute at @e[tag=dafi.sting.blueGlow,scores={dafi.sting.spectral=2}] run particle minecraft:wax_off ~ ~0.5 ~ 0.1 0.06 0.1 30 30 force
execute at @e[tag=dafi.sting.blueGlow,scores={dafi.sting.spectral=1}] run playsound minecraft:block.amethyst_block.hit master @a[] ~ ~ ~ 1 1.5

# sonar titles
# title @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] actionbar {"text":"! REVEALED !","bold":true,"color":"gold"}
# execute as @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] unless entity @a[nbt={ActiveEffects:[{Id:2b,Amplifier:2b}]},scores={hunted=0}] run title @a[nbt={ActiveEffects:[{Id:24b}]},scores={hunted=0}] actionbar {"text":"! MARKED !","bold":true,"color":"white"}


## STINGSHELL
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run particle minecraft:falling_dust red_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run particle minecraft:falling_dust blue_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run particle minecraft:falling_dust lime_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force

# execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run particle dust 1 0.35 0 1 ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
# execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run particle dust 1 0.65 0 1 ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
# execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run particle dust 0.247 0.949 1 1 ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
# execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run particle dust 0.396 1 0.898 1 ~ ~ ~ 0.1 0.1 0.1 0.2 1 force
# execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.02 1 force
# execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.02 1 force

#stingshell red throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] unless entity @e[tag=dafi.sting.trackerRed2,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.trackerRed2"]}
execute at @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["dafi.sting.redTall"],Invisible:1b,Small:1b}

execute as @e[tag=dafi.sting.trackerRed2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{red:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=dafi.sting.trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run summon minecraft:armor_stand ~ ~1 ~ {Tags:["dafi.sting.redMolotov","dafi.sting.centerMolotov"],Invisible:1b,Small:1b}
execute as @e[tag=dafi.sting.trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run kill @e[type=egg,limit=1,sort=nearest]
execute as @e[tag=dafi.sting.trackerRed2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{red:2}}}] run kill @s
#stingshell blue throw
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] unless entity @e[tag=dafi.sting.trackerBlue2,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["dafi.sting.trackerBlue2"]}
execute at @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["dafi.sting.blueTall"],Invisible:1b,Small:1b}

execute as @e[tag=dafi.sting.trackerBlue2] at @s run tp @s @e[type=minecraft:egg,nbt={Item:{tag:{blue:2}}},limit=1,sort=nearest,distance=..2]
execute as @e[tag=dafi.sting.trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["dafi.sting.blueMolotov","dafi.sting.centerMolotov"],Invisible:1b,Small:1b}
execute as @e[tag=dafi.sting.trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run kill @e[type=egg,limit=1,sort=nearest]
execute as @e[tag=dafi.sting.trackerBlue2] at @s unless entity @e[type=minecraft:egg,distance=..2,nbt={Item:{tag:{blue:2}}}] run kill @s

# molotov
execute as @e[tag=dafi.sting.redMolotov] at @s run function dafi:internal/class/sting/molotov/redmolotov
execute as @e[tag=dafi.sting.blueMolotov] at @s run function dafi:internal/class/sting/molotov/bluemolotov

execute as @e[tag=dafi.sting.redTall] at @s run function dafi:internal/class/sting/molotov/redtall
execute as @e[tag=dafi.sting.blueTall] at @s run function dafi:internal/class/sting/molotov/bluetall

#stingshell red particles and effects
#execute at @e[tag=redDebuff,scores={dafi.sting.spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=redDebuff,scores={dafi.sting.spectral=1}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3,Invisible:1}
# execute at @e[tag=redDebuff,scores={dafi.sting.spectral=1}] run scoreboard players set @e[distance=..3] hp_dmg 3
# execute at @e[tag=redDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!red] minecraft:instant_damage 1 0 true
# execute at @e[tag=redDebuff] run particle minecraft:dripping_lava ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
#execute at @e[tag=redDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
# kill @e[scores={dafi.sting.spectral=80},tag=redDebuff]
#stingshell blue particles and effects
# execute at @e[tag=blueDebuff,scores={dafi.sting.spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=blueDebuff,scores={dafi.sting.spectral=1}] run summon creeper ~ ~ ~ {Fuse:0, ExplosionRadius:-3,Invisible:1}

# execute at @e[tag=blueDebuff,scores={dafi.sting.spectral=1}] run playsound minecraft:entity.blaze.death master @a[distance=..15] ~ ~ ~ 1 2 1
# execute at @e[tag=blueDebuff] as @e[distance=..5] run effect give @e[distance=..5,team=!blue] minecraft:instant_damage 1 0 true
# execute at @e[tag=blueDebuff] run particle minecraft:falling_water ~ ~2 ~ 1.5 1.5 1.5 0.0001 10 force
# execute at @e[tag=blueDebuff] run particle minecraft:sneeze ~ ~ ~ 2 2 2 0.0001 40 force
# kill @e[scores={dafi.sting.spectral=80},tag=blueDebuff]

#STIM SPLASH
#execute at @e[type=minecraft:potion] run particle minecraft:heart ~ ~1 ~ .1 .1 .1 0.001 1 normal
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:nausea 5 1 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:jump_boost 1 3 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:regeneration 5 1 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:speed 3 4 true
#effect give @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:instant_health 1 1 true
#effect clear @e[nbt={ActiveEffects:[{Id:26b}]}] minecraft:luck