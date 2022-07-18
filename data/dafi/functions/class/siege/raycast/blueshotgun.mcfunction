execute rotated ~ ~ run function dafi:class/siege/raycast/bluefire

# execute anchored eyes facing ^0 ^1 ^6 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^0.951 ^0.309 ^6 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^-0.951 ^0.309 ^6 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^0.588 ^-0.809 ^6 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^-0.588 ^-0.809 ^6 run function dafi:class/siege/raycast/blue

# execute anchored eyes facing ^0 ^-1 ^3 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^-0.951 ^-0.309 ^4 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^0.951 ^-0.309 ^4 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^-0.588 ^0.809 ^4 run function dafi:class/siege/raycast/blue
# execute anchored eyes facing ^0.588 ^0.809 ^4 run function dafi:class/siege/raycast/blue


execute anchored eyes facing ^0 ^1 ^4 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^1.4265 ^0.309 ^4 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^-1.4265 ^0.309 ^4 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^0.882 ^-0.809 ^4 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^-0.882 ^-0.809 ^4 run function dafi:class/siege/raycast/bluefire

execute anchored eyes facing ^0 ^-1 ^6 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^-1.4265 ^-0.309 ^6 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^1.4265 ^-0.309 ^6 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^-0.882 ^0.809 ^6 run function dafi:class/siege/raycast/bluefire
execute anchored eyes facing ^0.882 ^0.809 ^6 run function dafi:class/siege/raycast/bluefire


## unit vectors facing vertices of a regular pentagon
# <0,1>
# <0.951,0.309>
# <-0.951,0.309>
# <0.588,-0.809>
# <-0.588,-0.809>

## deal damage that scales with hitcount
# execute as @e[scores={hitcount=1..}] run effect give @s absorption 1 0 true
execute as @e[scores={hitcount=1..}] run effect give @s instant_damage 1 0 true
execute as @a[scores={hitcount=2}] run scoreboard players set @s hp_dmg 2
execute as @a[scores={hitcount=3}] run scoreboard players set @s hp_dmg 4
execute as @a[scores={hitcount=4}] run scoreboard players set @s hp_dmg 6
execute as @a[scores={hitcount=5}] run scoreboard players set @s hp_dmg 8
execute as @a[scores={hitcount=6}] run scoreboard players set @s hp_dmg 10
execute as @a[scores={hitcount=7}] run scoreboard players set @s hp_dmg 12
execute as @a[scores={hitcount=8}] run scoreboard players set @s hp_dmg 14
execute as @a[scores={hitcount=9}] run scoreboard players set @s hp_dmg 16
execute as @a[scores={hitcount=10}] run scoreboard players set @s hp_dmg 18
execute as @a[scores={hitcount=11}] run scoreboard players set @s hp_dmg 20

scoreboard players reset @e hitcount 