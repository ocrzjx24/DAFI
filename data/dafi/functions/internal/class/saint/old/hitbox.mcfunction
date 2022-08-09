## HITBOX
execute as @s[team=!red] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;11743532]}]}}}}] run effect give @s[team=!red,scores={feather=20..100}] minecraft:instant_damage 1 1 true
execute as @s[team=!red] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;11743532]}]}}}}] run clear @s[team=!red,scores={feather=20..100}] minecraft:elytra
execute as @s[team=!red] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;11743532]}]}}}}] run effect clear @s[team=!red,scores={feather=20..100}] minecraft:slow_falling
execute as @s[team=!blue] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;2437522]}]}}}}] run effect give @s[team=!blue,scores={feather=20..100}] minecraft:instant_damage 1 1 true
execute as @s[team=!blue] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;2437522]}]}}}}] run clear @s[team=!blue,scores={feather=20..100}] minecraft:elytra
execute as @s[team=!blue] at @s if entity @e[type=minecraft:firework_rocket,distance=..2.5,nbt={FireworksItem:{tag:{Fireworks:{Explosions:[{Colors:[I;2437522]}]}}}}] run effect clear @s[team=!blue,scores={feather=20..100}] minecraft:slow_falling

## PARTICLE
particle minecraft:end_rod ^1 ^ ^ 0.1 0.1 0.1 0.0001 1
particle minecraft:end_rod ^-1 ^ ^ 0.1 0.1 0.1 0.0001 1
particle minecraft:end_rod ^ ^0.5 ^ 0.1 0.1 0.1 0.0001 1
particle minecraft:end_rod ^ ^-0.5 ^ 0.1 0.1 0.1 0.0001 1