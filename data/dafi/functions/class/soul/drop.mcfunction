playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~ 1 1.4 0.5
# particle dust 1 0.8 0 3 ~ ~ ~ 1 1 1 10 100 force
execute at @s run function dafi:class/soul/particle

#effect give @s levitation 2 10 false

# summon magma_cube ^ ^-1 ^-1 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[0f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[0f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[24f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[48f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[72f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[96f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[120f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[144f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[168f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[192f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[216f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[240f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[264f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[288f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[312f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
summon magma_cube ^ ^-1 ^-0.5 {Size:4,Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Rotation:[336f],Tags:["soul_cube"],ActiveEffects:[{Id:14,Duration:2147483447,Amplifier:1,ShowParticles:1b}]}
scoreboard players set @e[type=magma_cube, tag=soul_cube] dropReaver 1