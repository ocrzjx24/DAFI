#summon armor_stand ~ ~-0.33 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["dafi.wallrun"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:["dafi.wallrun"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}]} 
scoreboard players set @s delta.addition.magnitude 600
execute rotated ~ ~ run function dafi:internal/mechanics/addition/add_motion
effect give @s slow_falling infinite 100 false
